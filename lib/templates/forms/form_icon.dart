import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class FormIcon extends StatefulWidget {
  final String inputLabel;
  final IconData icon;
  final double labelFontSize;
  final double labelLetterSpacing;
  final bool readOnly;
  final String hintText;
  final double hintTextSize;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final IconData suffixIcon;
  final VoidCallback onPressed;
  final bool obscureText;

  const FormIcon({
    super.key,
    required this.inputLabel,
    required this.icon,
    required this.suffixIcon,
    this.labelFontSize = 14,
    this.labelLetterSpacing = 0,
    this.readOnly = false,
    this.hintText = "",
    this.hintTextSize = 12,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.validator,
    required this.onPressed,
    this.obscureText = false,
  });

  @override
  State<FormIcon> createState() => _FormIconState();
}

class _FormIconState extends State<FormIcon> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: widget.labelFontSize,
            fontWeight: semi,
            letterSpacing: widget.labelLetterSpacing,
          ),
        ),
        Container(
          height: 35,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
              )
            ),
          ),
          child: TextFormField(
            cursorHeight: 15,
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            readOnly: widget.readOnly,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 0,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: widget.hintTextSize,
                fontWeight: medium,
                color: Theme.of(context).colorScheme.secondary,
              ),
              suffixIcon: IconButton(
                padding: const EdgeInsets.only(bottom: 1),
                icon: Icon(
                  widget.suffixIcon,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 20,
                ),
                onPressed: widget.onPressed,
              ),
            ),
            style: TextStyle(
              fontWeight: bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
            validator: widget.validator,
          ),
        ),
      ],
    );
  }
}