import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/repositories/workout_repository.dart';

class WorkoutController extends AsyncNotifier<List<Exercise>> {
  @override
  Future<List<Exercise>> build() async {
    return ref.read(workoutRepositoryProvider).getAllExercises();
  }

  Future<void> addExercise(Exercise exercise) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(workoutRepositoryProvider).addExercise(exercise),
    );
  }
}

final workoutControllerProvider =
    AsyncNotifierProvider<WorkoutController, List<Exercise>>(
  WorkoutController.new,
);

final workoutRepositoryProvider = Provider<WorkoutRepository>((ref) {
  return WorkoutRepositoryImpl();
});
