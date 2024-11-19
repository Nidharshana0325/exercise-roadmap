import 'package:exercise_map/models/question.dart';

class Exercise {
  final String id;
  final String title;
  final String description;
  final List<Question> questions;
  final int day;
  bool isCompleted;
  int correctAnswers;
  int totalQuestions;

  Exercise({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.day,
    this.isCompleted = false,
    this.correctAnswers = 0,
    required this.totalQuestions,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'day': day,
      'isCompleted': isCompleted,
      'correctAnswers': correctAnswers,
      'totalQuestions': totalQuestions,
    };
  }

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      day: json['day'],
      isCompleted: json['isCompleted'] ?? false,
      correctAnswers: json['correctAnswers'] ?? 0,
      totalQuestions: json['totalQuestions'],
      questions: [], // Questions would be loaded separately
    );
  }
}