// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/base/auth_base.dart';
import '../auth/login_signup/login_signup_page.dart';
import '../onboarding/onboarding_home.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String onboardingHome = '/onboarding-home';
  static const String authBase = '/auth-base';
  static const String loginSignUpPage = '/login-sign-up-page';
  static const all = <String>{
    splashPage,
    onboardingHome,
    authBase,
    loginSignUpPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.onboardingHome, page: OnboardingHome),
    RouteDef(Routes.authBase, page: AuthBase),
    RouteDef(Routes.loginSignUpPage, page: LoginSignUpPage),
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
    LoginSignUpPage: (data) {
      final args = data.getArgs<LoginSignUpPageArguments>(
        orElse: () => LoginSignUpPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginSignUpPage(
          key: args.key,
          openLogin: args.openLogin,
        ),
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

  Future<dynamic> pushLoginSignUpPage({
    Key key,
    bool openLogin = false,
  }) =>
      push<dynamic>(
        Routes.loginSignUpPage,
        arguments: LoginSignUpPageArguments(key: key, openLogin: openLogin),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginSignUpPage arguments holder class
class LoginSignUpPageArguments {
  final Key key;
  final bool openLogin;
  LoginSignUpPageArguments({this.key, this.openLogin = false});
}
