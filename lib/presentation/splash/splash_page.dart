import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('splash.jpg', fit: BoxFit.fill,),
    );
  }
}
