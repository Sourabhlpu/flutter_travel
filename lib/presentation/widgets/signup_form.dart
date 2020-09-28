import 'package:flutter/material.dart';
import 'package:flutter_travel/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:flutter_travel/presentation/widgets/login_signup_base.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

class SignUpForm extends LoginSignupBase {
  @override
  String getNavigationButtonTitle() {
    return 'Already have an Account? Login';
  }

  @override
  String getPageTitle() {
    return 'SignUp';
  }

  @override
  String getPrimaryButtonText() {
    return 'SignUp';
  }

  @override
  void handleNavigationButtonClick(BuildContext context) {
    ExtendedNavigator.of(context).replace(Routes.loginSignUpPage,
        arguments: LoginSignUpPageArguments(openLogin: true));
  }

  @override
  void handlePrimaryButtonClick(SignUpFormBloc bloc) {
    bloc.add(const SignUpFormEvent.registerWithEmailAndPasswordPressed());
  }

  Padding buildPasswordInput(BuildContext context, SignUpFormBloc bloc) {
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
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        onChanged: (value) => bloc.add(SignUpFormEvent.passwordChanged(value)),
        validator: (_) => bloc.state.password.value.fold(
            (f) => f.maybeMap(
                invalidPassword: (_) => 'Invalid Password', orElse: () => null),
            (_) => null),
      ),
    );
  }

  Padding buildEmailInput(BuildContext context, SignUpFormBloc bloc) {
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
        onChanged: (value) => bloc.add(SignUpFormEvent.emailChanged(value)),
        validator: (_) => bloc.state.emailAddress.value.fold(
            (f) => f.maybeMap(
                invalidEmail: (_) => 'Invalid Email', orElse: () => null),
            (_) => null),
      ),
    );
  }

  @override
  Widget buildUsernameInput(BuildContext context, SignUpFormBloc bloc) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 12.0),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.grey.shade300,
          ),
          labelText: 'Username',
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        onChanged: (value) => bloc.add(SignUpFormEvent.usernameChanged(value)),
        validator: (_) => bloc.state.username.value.fold(
            (f) => f.maybeMap(
                invalidUsername: (_) => 'Invalid Username', orElse: () => null),
            (_) => null),
      ),
    );
  }

  @override
  Widget getUsernameDivider() => Divider(height: 0.7);
}
