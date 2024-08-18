import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class NextButton extends StatelessWidget with AppMixin {

  final VoidCallback onPressed;
  final double size;

  NextButton({
    required this.onPressed,
    this.size = 55,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: CircleBorder(),
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          size: size/2,
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
