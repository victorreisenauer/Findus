part of 'lesson_bloc.dart';

@freezed
abstract class LessonEvent with _$LessonEvent{
  const factory LessonEvent.fetchLessonById(UniqueId id) = FetchLessonById;
  const factory LessonEvent.fetchAllLessons() = FetchAllLessons;
}
