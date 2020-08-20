import 'package:flutter/material.dart';

class OnboardingPageClipper extends CustomClipper<Path> {
  final double dragPercent;

  OnboardingPageClipper({@required this.dragPercent});

  @override
  Path getClip(Size size) {
    var centerPoint = Offset(size.width / 2, size.height);
    double radius = (2 * size.height + 50) * (dragPercent);

    Path path = Path()
      ..addOval(
          Rect.fromCenter(center: centerPoint, width: radius, height: radius))
      ..addRect(new Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}