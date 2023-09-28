import 'package:flutter/material.dart';
import 'package:advanced_basics_app/data/questions.dart';
import 'package:advanced_basics_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() resetQuiz;
  const ResultsScreen(this.resetQuiz, {super.key, required this.chosenAnswers});

  // List<Map<String, Object>> get summaryData()

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final nbTotalQuestions = questions.length;
    final nbCorrectAnswer = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 69, 18, 189),
              Color.fromARGB(255, 143, 10, 231)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$nbCorrectAnswer/$nbTotalQuestions'),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: resetQuiz,
              child: const Text('Recommencer depuis le début'),
            ),
          ],
        ),
      ),
    );
  }
}
