import 'package:advanced_basics_app/data/questions.dart';
import 'package:advanced_basics_app/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics_app/start_screen.dart';
import 'package:advanced_basics_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(const Color.fromARGB(255, 69, 18, 189),
  //       const Color.fromARGB(255, 143, 10, 231), switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(const Color.fromARGB(255, 69, 18, 189),
        const Color.fromARGB(255, 143, 10, 231), switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onTapAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(body: screenWidget),
    );
  }
}
