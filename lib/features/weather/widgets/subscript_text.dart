import 'package:flutter/material.dart';

class SuperscriptText extends StatelessWidget {
  final String text;

  final String superScript;
  final Color color;
  final Color superscriptColor;
  const SuperscriptText({
    super.key,
    required this.text,
    required this.superScript,
    required this.color,
    required this.superscriptColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          superScript,
          style: TextStyle(
            color: superscriptColor,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
