import 'package:flutter/foundation.dart';
import '../models/exercise.dart';
import '../services/database_service.dart';

class ExerciseProvider with ChangeNotifier {
  final DatabaseService _databaseService;
  List<Exercise> _exercises = [];
  String _username = '';
  int _currentDay = 1;

  ExerciseProvider(this._databaseService) {
    _initializeData();
  }

  String get username => _username;
  int get currentDay => _currentDay;
  List<int> get completedDays => _getCompletedDays();

  Future<void> _initializeData() async {
    _exercises = await _databaseService.getExercises();
    _username = await _databaseService.getUsername() ?? '';
    notifyListeners();
  }

  Future<void> login(String username) async {
    await _databaseService.saveUsername(username);
    _username = username;
    notifyListeners();
  }

  List<Exercise> getExercisesForDay(int day) {
    return _exercises.where((e) => e.day == day).toList();
  }

  bool isDayCompleted(int day) {
    var dayExercises = getExercisesForDay(day);
    return dayExercises.every((e) => e.isCompleted);
  }

  bool isDayUnlocked(int day) {
    if (day == 1) return true;
    return isDayCompleted(day - 1);
  }

  List<int> _getCompletedDays() {
    List<int> completed = [];
    for (int i = 1; i <= 6; i++) {
      if (isDayCompleted(i)) completed.add(i);
    }
    return completed;
  }

  Future<void> updateExerciseProgress(Exercise exercise, int correctAnswers) async {
    exercise.correctAnswers = correctAnswers;
    exercise.isCompleted = true;
    await _databaseService.saveProgress(exercise.id, correctAnswers);
    notifyListeners();
  }
}