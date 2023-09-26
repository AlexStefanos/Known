import 'package:advanced_basics_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onTapAnswer;
  const QuestionsScreen({super.key, required this.onTapAnswer});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onTapAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
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
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 22),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
