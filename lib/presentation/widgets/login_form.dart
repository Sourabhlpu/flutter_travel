import 'package:flutter/material.dart';
import 'package:flutter_travel/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:flutter_travel/presentation/widgets/login_signup_base.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

class LoginForm extends LoginSignupBase {
  @override
  String getNavigationButtonTitle() {
    return 'Create Account';
  }

  @override
  String getPageTitle() {
    return 'Login';
  }

  @override
  String getPrimaryButtonText() {
    return 'Login';
  }

  @override
  void handleNavigationButtonClick(BuildContext context) {
    ExtendedNavigator.of(context).replace(Routes.loginSignUpPage,
        arguments: LoginSignUpPageArguments(openLogin: false));
  }

  @override
  void handlePrimaryButtonClick(SignUpFormBloc bloc) {
    bloc.add(const SignUpFormEvent.loginWithEmailAndPasswordPressed());
  }

  @override
  Widget buildUsernameInput(BuildContext context, SignUpFormBloc bloc) => Container();

  @override
  Widget getUsernameDivider() => Container();
}
