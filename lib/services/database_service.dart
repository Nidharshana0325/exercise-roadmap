import 'package:shared_preferences/shared_preferences.dart';
import '../models/exercise.dart';
import '../data/exercise_data.dart';

class DatabaseService {
  late SharedPreferences _prefs;
  
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<List<Exercise>> getExercises() async {
    final exercises = ExerciseData.getAllExercises();
    
    // Load progress for each exercise
    for (var exercise in exercises) {
      final progress = await getProgress(exercise.id);
      if (progress != null) {
        exercise.correctAnswers = progress;
        exercise.isCompleted = true;
      }
    }
    
    return exercises;
  }

  Future<void> saveProgress(String exerciseId, int correctAnswers) async {
    await _prefs.setInt('exercise_$exerciseId', correctAnswers);
  }

  Future<int?> getProgress(String exerciseId) async {
    return _prefs.getInt('exercise_$exerciseId');
  }

  Future<void> saveUsername(String username) async {
    await _prefs.setString('username', username);
  }

  Future<String?> getUsername() async {
    return _prefs.getString('username');
  }

  Future<void> clearProgress() async {
    final keys = _prefs.getKeys().where((key) => key.startsWith('exercise_'));
    for (var key in keys) {
      await _prefs.remove(key);
    }
  }
}