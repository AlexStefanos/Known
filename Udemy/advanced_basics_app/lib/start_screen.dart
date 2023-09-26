import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final Color gradientColorStart, gradientColorStop;
  final void Function() startQuiz;

  const StartScreen(
      this.gradientColorStart, this.gradientColorStop, this.startQuiz,
      {super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientColorStart, gradientColorStop],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              height: 525,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset('assets/images/quiz-logo.png',
            //       width: 300, height: 525),
            // ),
            Text(
              'heeeeeeeeeeeeey',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              icon: const Icon(Icons.arrow_circle_right),
              label: const Text('Start Quiz',
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
