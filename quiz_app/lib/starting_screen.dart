import 'package:flutter/material.dart';
import 'package:quiz_app/text_styler.dart';

class EntryColumn extends StatelessWidget {
  const EntryColumn(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png", 
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
          ),

        const SizedBox(
          height: 60,
          ),

        const TextStyler(
          "Learn Flutter the fun way!", 
          28,
          Colors.white
          ),

        const SizedBox(
          height: 30,
          ),

        OutlinedButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.cyan,
            textStyle: const TextStyle(
              fontSize: 14
            )
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
          )
        ],
    );
  }
}