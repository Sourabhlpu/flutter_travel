// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/base/auth_base.dart';
import '../auth/login_signup/login_signup_page.dart';
import '../home/home_page.dart';
import '../onboarding/onboarding_home.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String onboardingHome = '/onboarding-home';
  static const String authBase = '/auth-base';
  static const String loginSignUpPage = '/login-sign-up-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    splashPage,
    onboardingHome,
    authBase,
    loginSignUpPage,
    homePage,
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
    RouteDef(Routes.homePage, page: HomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 2000),
      );
    },
    OnboardingHome: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OnboardingHome(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 2000),
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
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            LoginSignUpPage(
          key: args.key,
          openLogin: args.openLogin,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500),
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
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

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);
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
