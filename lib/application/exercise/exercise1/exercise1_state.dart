part of 'exercise1_bloc.dart';

@freezed
abstract class Exercise1State with _$Exercise1State {
  const factory Exercise1State.initial() = Initial;
  const factory Exercise1State.showExercise() = ShowExercise;
}
