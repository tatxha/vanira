import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class NextButton extends StatelessWidget with AppMixin {

  final VoidCallback onPressed;

  NextButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: CircleBorder(),
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          size: 32,
        )
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF83D0AF),
            Color(0xFFADD9B7),
          ]
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
