import 'package:flutter/material.dart';

class TextStyler extends StatelessWidget {
  const TextStyler(this.text, this.font, this.color, {super.key});

  final String text;
  final double font;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: font,
        color: color
      ),
    );
  }
}