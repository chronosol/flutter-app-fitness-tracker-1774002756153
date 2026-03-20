import '../entities/exercise.dart';

abstract class WorkoutRepository {
  Future<List<Exercise>> getAllExercises();
  Future<void> addExercise(Exercise exercise);
}
