import 'package:flutter/material.dart';
import 'package:quiz_app/background.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Layout(
          const [Color.fromARGB(255, 0, 67, 76), 
          Color.fromARGB(255, 0, 148, 177)]
        )
      )
    );
  }
}