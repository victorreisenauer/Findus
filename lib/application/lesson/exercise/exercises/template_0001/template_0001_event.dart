part of "template_0001_bloc.dart";

@freezed
abstract class Template0001Event with _$Template0001Event {
  const factory Template0001Event.getExercise() = GetExercise;
  const factory Template0001Event.droppedDraggable(int idTarget, int idDraggable) = DroppedDraggable;
  const factory Template0001Event.pressedDone() = PressedDone;
}
