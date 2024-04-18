import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: (itemData['question_index'] as int),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 111, 105, 123))),
              
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Color.fromARGB(255, 178, 207, 252),
                fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
