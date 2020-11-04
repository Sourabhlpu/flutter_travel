import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_travel/presentation/auth/base/auth_base.dart';
import 'package:flutter_travel/presentation/auth/login_signup/login_signup_page.dart';
import 'package:flutter_travel/presentation/home/home_page.dart';
import 'package:flutter_travel/presentation/onboarding/onboarding_home.dart';
import 'package:flutter_travel/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    CustomRoute(page: SplashPage, initial: true, transitionsBuilder: TransitionsBuilders.fadeIn, durationInMilliseconds: 2000),
    CustomRoute(page: OnboardingHome, transitionsBuilder: TransitionsBuilders.fadeIn, durationInMilliseconds: 2000),
    MaterialRoute(page: AuthBase),
    CustomRoute(page: LoginSignUpPage, transitionsBuilder: TransitionsBuilders.fadeIn, durationInMilliseconds: 1500),
    MaterialRoute(page: HomePage)
  ],
)
class $Router {}
