// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_travel/presentation/splash/splash_page.dart';
import 'package:flutter_travel/presentation/onboarding/onboarding_home.dart';
import 'package:flutter_travel/presentation/auth/base/auth_base.dart';

abstract class Routes {
  static const splashPage = '/';
  static const onboardingHome = '/onboarding-home';
  static const authBase = '/auth-base';
  static const all = {
    splashPage,
    onboardingHome,
    authBase,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.onboardingHome:
        return MaterialPageRoute<dynamic>(
          builder: (context) => OnboardingHome(),
          settings: settings,
        );
      case Routes.authBase:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AuthBase(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushOnboardingHome() => pushNamed(Routes.onboardingHome);

  Future pushAuthBase() => pushNamed(Routes.authBase);
}
