import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function handleClick;
  final String text;
  const GradientButton({this.handleClick, this.text});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: handleClick,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(8.0)),
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 105, 117, 225),
              Color.fromARGB(255, 127, 82, 172)
            ],
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
