part of 'exercise_1_bloc.dart';

@freezed
abstract class Exercise_1Event with _$Exercise_1Event {
  const factory Exercise_1Event.droppedDraggable(
      String idTarget, String idDraggable) = DroppedDraggable;
  const factory Exercise_1Event.pressedFinish() = PressedFinish;
}
