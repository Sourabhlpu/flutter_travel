import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel/presentation/widgets/onboarding_progress_indicator.dart';

import 'onboarding_page.dart';
import 'presentation/onboarding/onboarding_page_clipper.dart';
import 'presentation/onboarding/onboarding_home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: OnboardingHome(),
      ),
    );
  }
}








