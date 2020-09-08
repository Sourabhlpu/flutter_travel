import 'package:flutter/material.dart';

class CustomOutLineButton extends StatelessWidget {
  final Function handleClick;
  final String text;
  const CustomOutLineButton({this.handleClick, this.text});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: handleClick,
      borderSide: BorderSide(
        color: Color.fromARGB(255, 127, 82, 172),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
