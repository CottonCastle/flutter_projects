import 'package:flutter/material.dart';

// ignore: camel_case_types
class textStyle extends StatelessWidget {
  const textStyle(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
    text, 
    style: const TextStyle(
      color: Colors.green,
      fontSize: 42,
      ),
    );
  }
}