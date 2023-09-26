import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
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
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String),
                        Text(data['correct_answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
