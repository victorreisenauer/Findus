part of 'exercise1_bloc.dart';

@freezed
abstract class Exercise1Event with _$Exercise1Event {
  const factory Exercise1Event.userAction(String type, String action) =
      UserAction;
}
