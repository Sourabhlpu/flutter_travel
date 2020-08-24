import 'package:flutter/material.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}









