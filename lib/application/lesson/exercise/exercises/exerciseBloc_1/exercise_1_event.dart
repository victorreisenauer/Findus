part of 'exercise_1_bloc.dart';

@freezed
abstract class Exercise_1Event with _$Exercise_1Event {
  const factory Exercise_1Event.getExercise() = GetExercise;
  const factory Exercise_1Event.droppedDraggable(
      int idTarget, int idDraggable) = DroppedDraggable;
  const factory Exercise_1Event.pressedDone() = PressedDone;
}
