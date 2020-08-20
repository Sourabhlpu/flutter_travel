import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String text;
  final String image;
  final String subText;

  const OnboardingPage({this.text, this.image, this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Image.asset(
            image,
            width: 250,
            height: 400,
            fit: BoxFit.cover,
          ),
          Spacer(),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          Spacer(),
        ],
      ),
    );
  }
}