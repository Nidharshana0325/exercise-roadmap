import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/exercise_provider.dart';
import '../widgets/question_card.dart';

class QuestionScreen extends StatefulWidget {
  final Exercise exercise;

  const QuestionScreen({Key? key, required this.exercise}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late PageController _pageController;
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Grammar Practice'),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (_currentQuestionIndex + 1) / widget.exercise.questions.length,
            backgroundColor: Colors.grey[800],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.exercise.questions.length,
              onPageChanged: (index) {
                setState(() => _currentQuestionIndex = index);
              },
              itemBuilder: (context, index) {
                return QuestionCard(
                  question: widget.exercise.questions[index],
                  onAnswerSelected: (isCorrect) {
                    if (isCorrect) _correctAnswers++;
                    
                    Future.delayed(const Duration(seconds: 2), () {
                      if (_currentQuestionIndex < widget.exercise.questions.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        // Exercise completed
                        context.read<ExerciseProvider>().updateExerciseProgress(
                          widget.exercise,
                          _correctAnswers,
                        );
                        Navigator.pop(context);
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}