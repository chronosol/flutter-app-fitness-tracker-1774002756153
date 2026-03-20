import 'dart:async';
import '../../domain/entities/exercise.dart';
import '../../domain/repositories/workout_repository.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  final List<Exercise> _exercises = [];

  @override
  Future<List<Exercise>> getAllExercises() async {
    return _exercises;
  }

  @override
  Future<void> addExercise(Exercise exercise) async {
    _exercises.add(exercise);
  }
}
