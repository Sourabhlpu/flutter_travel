import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'login_signup_header.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

abstract class LoginSignupBase extends StatelessWidget {
  String getPageTitle();
  String getNavigationButtonTitle();
  void handleNavigationButtonClick(BuildContext context);
  void handlePrimaryButtonClick(SignUpFormBloc bloc);
  String getPrimaryButtonText();
  Form getForm(
      BuildContext context, SignUpFormState state, SignUpFormBloc bloc);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email Already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context)
            },
            (_) => {},
          ),
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            LoginSignUpHeader(
              title: getPageTitle(),
            ),
            Padding(
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
                      getForm(context, state, context.bloc<SignUpFormBloc>()),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  handleNavigationButtonClick(context);
                },
                child: Text(
                  getNavigationButtonTitle(),
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  handlePrimaryButtonClick(context.bloc<SignUpFormBloc>());
                },
                color: Colors.blueGrey,
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      getPrimaryButtonText(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
