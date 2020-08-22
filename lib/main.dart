import 'package:flutter/material.dart';
import 'package:flutter_travel/injection.dart';
import 'package:injectable/injectable.dart';
import 'presentation/onboarding/onboarding_home.dart';

void main() {
  configureInjection(Environment.prod);
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








