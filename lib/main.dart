import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color//status barIcon Brightness
  ));
  runApp(AppWidget());
}









