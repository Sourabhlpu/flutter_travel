import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_travel/presentation/auth/base/auth_base.dart';
import 'package:flutter_travel/presentation/auth/login_signup/login_signup_page.dart';
import 'package:flutter_travel/presentation/onboarding/onboarding_home.dart';
import 'package:flutter_travel/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: OnboardingHome),
    MaterialRoute(page: AuthBase),
    MaterialRoute(page: LoginSignUpPage),
  ],
)
class $Router {}
