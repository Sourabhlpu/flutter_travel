// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/base/auth_base.dart';
import '../auth/login/login_page.dart';
import '../auth/signup/signup_page.dart';
import '../onboarding/onboarding_home.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String onboardingHome = '/onboarding-home';
  static const String authBase = '/auth-base';
  static const String signUpPage = '/sign-up-page';
  static const String loginPage = '/login-page';
  static const all = <String>{
    splashPage,
    onboardingHome,
    authBase,
    signUpPage,
    loginPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.onboardingHome, page: OnboardingHome),
    RouteDef(Routes.authBase, page: AuthBase),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.loginPage, page: LoginPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    OnboardingHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingHome(),
        settings: data,
      );
    },
    AuthBase: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthBase(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      final args = data.getArgs<SignUpPageArguments>(
        orElse: () => SignUpPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(
          key: args.key,
          openLogin: args.openLogin,
        ),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushOnboardingHome() => push<dynamic>(Routes.onboardingHome);

  Future<dynamic> pushAuthBase() => push<dynamic>(Routes.authBase);

  Future<dynamic> pushSignUpPage({
    Key key,
    bool openLogin = false,
  }) =>
      push<dynamic>(
        Routes.signUpPage,
        arguments: SignUpPageArguments(key: key, openLogin: openLogin),
      );

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SignUpPage arguments holder class
class SignUpPageArguments {
  final Key key;
  final bool openLogin;
  SignUpPageArguments({this.key, this.openLogin = false});
}
