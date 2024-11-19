class Question {
  final String id;
  final String text;
  final List<String> options;
  final String correctAnswer;
  final String explanation;
  bool isAnswered;
  String? selectedAnswer;

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    this.isAnswered = false,
    this.selectedAnswer,
  });

  bool isCorrect() => selectedAnswer == correctAnswer;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'options': options,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
      'isAnswered': isAnswered,
      'selectedAnswer': selectedAnswer,
    };
  }

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      text: json['text'],
      options: List<String>.from(json['options']),
      correctAnswer: json['correctAnswer'],
      explanation: json['explanation'],
      isAnswered: json['isAnswered'] ?? false,
      selectedAnswer: json['selectedAnswer'],
    );
  }
}