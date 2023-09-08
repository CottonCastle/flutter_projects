import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SizedBox(
                width: 340,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: data["user_answer"] == data["correct_answer"]
                          ? Colors.green // Change to your desired color for correct answers
                          : const Color.fromARGB(255, 228, 27, 13) // Change to your default color for incorrect answers
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        ((data["questions_index"] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            data["question"] as String,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left, // Left-justify the text
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data["user_answer"] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 46, 231, 255),
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left, // Left-justify the text
                          ),
                          Text(
                            data["correct_answer"] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 128, 255, 215),
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left, // Left-justify the text
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
