class User {
  final String username;
  final Map<String, dynamic> progress;
  final int currentDay;

  User({
    required this.username,
    required this.progress,
    this.currentDay = 1,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'progress': progress,
      'currentDay': currentDay,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      progress: Map<String, dynamic>.from(json['progress'] ?? {}),
      currentDay: json['currentDay'] ?? 1,
    );
  }

  User copyWith({
    String? username,
    Map<String, dynamic>? progress,
    int? currentDay,
  }) {
    return User(
      username: username ?? this.username,
      progress: progress ?? this.progress,
      currentDay: currentDay ?? this.currentDay,
    );
  }
}