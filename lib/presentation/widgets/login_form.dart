import 'package:flutter/material.dart';
import 'package:flutter_travel/application/auth/auth_form/auth_form_bloc.dart';
import 'package:flutter_travel/presentation/widgets/auth_template.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

class LoginForm extends AuthTemplate {
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
  void handlePrimaryButtonClick(AuthFormBloc bloc) {
    bloc.add(const AuthFormEvent.loginWithEmailAndPasswordPressed());
  }

  @override
  Widget buildUsernameInput(BuildContext context, AuthFormBloc bloc) => Container();

  @override
  Widget getUsernameDivider() => Container();
}
