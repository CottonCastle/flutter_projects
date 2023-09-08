import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/starting_screen.dart';

// ignore: must_be_immutable
class Layout extends StatefulWidget {
  Layout(this.colorList, {Key? key}) : super(key: key);
  List<Color> colorList;
  
  @override
  State<Layout> createState() {
    return _LayoutState();
  }
}

class _LayoutState extends State<Layout> {

  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = EntryColumn(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: selectedAnswers,
        );
      });
    }
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = EntryColumn(switchScreen);
    });
  }  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colorList,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )
      ),
      child: Center(
        child: activeScreen
      ),
    );
  }
}