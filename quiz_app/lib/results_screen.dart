import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswers, required this.restart});

  final List<String> chosenAnswers;
  void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "questions_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i],
      });
    }
    return summary;
  } 

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Text("You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 80, 227, 247),
                  fontSize: 20
                ),
              ),
            ),
            const SizedBox(height: 30,),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30,),
            TextButton.icon(
              onPressed: restart,
              icon: const Icon(
                Icons.restart_alt_rounded,
                size: 20,
                color: Colors.white,
              ),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}