import 'package:flutter/material.dart';
import 'package:learning_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
                [Color.fromARGB(255, 1, 250, 201),
                Color.fromARGB(255, 0, 237, 237)]),
      ),
    ),
  );
}

