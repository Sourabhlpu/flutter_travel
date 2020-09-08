
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_travel/presentation/auth/base/auth_base.dart';
import 'package:flutter_travel/presentation/onboarding/onboarding_home.dart';
import 'package:flutter_travel/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router{
  @initial
  SplashPage splashPage;
  OnboardingHome onboardingHome;
  AuthBase authBase;
}