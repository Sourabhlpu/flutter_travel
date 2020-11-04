import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/auth/auth_form/auth_form_bloc.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

abstract class AuthTemplate extends StatefulWidget {
  String getPageTitle();
  String getNavigationButtonTitle();
  void handleNavigationButtonClick(BuildContext context);
  void handlePrimaryButtonClick(AuthFormBloc bloc);
  String getPrimaryButtonText();
  Widget buildUsernameInput(BuildContext context, AuthFormBloc bloc);
  Widget getUsernameDivider();
  @override
  _AuthTemplateState createState() => _AuthTemplateState();
}

class _AuthTemplateState extends State<AuthTemplate>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation animation1;
  Animation animation2;
  Animation animation3;
  final double MAX_VERTICAL_OFFSET = -80;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
          ..addListener(() {
            setState(() {});
          });
    animation1 = CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.3, curve: Curves.decelerate));
    animation2 = CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.6, curve: Curves.decelerate));
    animation3 = CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 1.0, curve: Curves.decelerate));
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('${_animationController.value}');
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        if (state.isSubmitting) _openLoadingDialog(context);
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              ExtendedNavigator.of(context).pop(context);
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email Already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              // navigate user
              //ExtendedNavigator.of(context).popUntilRoot();
              ExtendedNavigator.of(context).pushAndRemoveUntilPath(Routes.homePage, Routes.onboardingHome);
            },
          ),
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            Transform(
              transform: Matrix4.translationValues(
                  0, MAX_VERTICAL_OFFSET * (1 - animation1.value), 0),
              child: _buildHeader(),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0, MAX_VERTICAL_OFFSET * (1 - animation2.value), 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent.withOpacity(0.1),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child:
                        getForm(context, state, context.bloc<AuthFormBloc>()),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0, MAX_VERTICAL_OFFSET * (1 - animation2.value), 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: GestureDetector(
                  onTap: () {
                    widget.handleNavigationButtonClick(context);
                  },
                  child: Text(
                    widget.getNavigationButtonTitle(),
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0, MAX_VERTICAL_OFFSET * (1 - animation3.value), 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    widget
                        .handlePrimaryButtonClick(context.bloc<AuthFormBloc>());
                  },
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        widget.getPrimaryButtonText(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Form getForm(BuildContext context, AuthFormState state, AuthFormBloc bloc) {
    return Form(
      autovalidate: state.showErrorMessages,
      child: Column(
        children: [
          widget.buildUsernameInput(context, bloc),
          widget.getUsernameDivider(),
          buildEmailInput(context, bloc),
          Divider(height: 0.7),
          buildPasswordInput(context, bloc)
        ],
      ),
    );
  }

  Padding buildPasswordInput(BuildContext context, AuthFormBloc bloc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 4.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 12.0),
          alignLabelWithHint: true,
          prefixIcon: Icon(
            Icons.vpn_key,
            color: Colors.grey.shade300,
          ),
          labelText: 'Password',
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
        onFieldSubmitted: (_) {
          FocusScope.of(context).unfocus();
          widget.handlePrimaryButtonClick(bloc);
        },
        autofocus: false,
        onChanged: (value) => bloc.add(AuthFormEvent.passwordChanged(value)),
        validator: (_) => bloc.state.password.value.fold(
            (f) => f.maybeMap(
                invalidPassword: (_) => 'Invalid Password', orElse: () => null),
            (_) => null),
      ),
    );
  }

  Padding buildEmailInput(BuildContext context, AuthFormBloc bloc) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 12.0),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.grey.shade300,
          ),
          labelText: 'Email',
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        onChanged: (value) => bloc.add(AuthFormEvent.emailChanged(value)),
        validator: (_) => bloc.state.emailAddress.value.fold(
            (f) => f.maybeMap(
                invalidEmail: (_) => 'Invalid Email', orElse: () => null),
            (_) => null),
      ),
    );
  }

  _buildHeader() {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent])
                .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/images/signup_top.jpg',
            width: double.infinity,
            height: 300,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            widget.getPageTitle(),
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        )
      ],
    );
  }

  _openLoadingDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
