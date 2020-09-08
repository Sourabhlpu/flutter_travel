import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 0.7,
          width: 80,
          color: Colors.grey,
        ),
        Text('OR', style: TextStyle(color: Colors.white),),
        Container(
          height: 0.7,
          width: 80,
          color: Colors.grey,
        ),
      ],
    );
  }
}