import 'package:flutter/material.dart';

class LoginSignUpHeader extends StatelessWidget {
  final String title;
  const LoginSignUpHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent])
                .createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/images/signup_top.jpg',
            width: double.infinity,
            height: 300,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        )
      ],
    );
  }
}