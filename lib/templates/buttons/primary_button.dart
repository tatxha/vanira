import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class PrimaryButton extends StatelessWidget with AppMixin {

  final VoidCallback onPressed;
  final String buttonText;
  final double fontSize;

  PrimaryButton({required this.onPressed, required this.buttonText, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: LinearBorder()
        ),
        child: Text(
          " " + buttonText + " ",
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: bold,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF83D0AF),
            Color(0xFFADD9B7),
          ]
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
