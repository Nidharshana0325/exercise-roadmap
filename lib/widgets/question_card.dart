import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionCard extends StatefulWidget {
  final Question question;
  final Function(bool) onAnswerSelected;

  const QuestionCard({
    Key? key,
    required this.question,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  String? selectedAnswer;
  bool? isCorrect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          ...widget.question.options.map((option) => _buildOptionButton(option)),
          const SizedBox(height: 16),
          if (isCorrect != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isCorrect! ? Colors.green.withOpacity(0.2) : Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isCorrect! ? 'Great Work!' : 'That Wasn\'t Right',
                    style: TextStyle(
                      color: isCorrect! ? Colors.green : Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (!isCorrect!) ...[
                    const SizedBox(height: 8),
                    Text(
                      'The correct answer is ${widget.question.correctAnswer}',
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.question.explanation,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(String option) {
    final bool isSelected = selectedAnswer == option;
    final bool showResult = isCorrect != null;
    final bool isCorrectAnswer = option == widget.question.correctAnswer;

    Color getButtonColor() {
      if (!showResult) return isSelected ? Colors.deepPurple : Colors.grey[900]!;
      if (isCorrectAnswer) return Colors.green;
      if (isSelected && !isCorrectAnswer) return Colors.red;
      return Colors.grey[900]!;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        onPressed: showResult ? null : () => _handleAnswer(option),
        style: ElevatedButton.styleFrom(
          backgroundColor: getButtonColor(),
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          option,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  void _handleAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      isCorrect = answer == widget.question.correctAnswer;
    });
    widget.onAnswerSelected(isCorrect!);
  }
}