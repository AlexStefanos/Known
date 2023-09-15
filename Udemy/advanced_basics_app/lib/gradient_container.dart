import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColorStart, this.gradientColorStop,
      {super.key});

  final Color gradientColorStart, gradientColorStop;
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
            Image.asset('assets/images/quiz-logo.png', width: 300, height: 525),
            const Text(
              'heeeeeeeeeeeeey',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
