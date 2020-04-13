part of 'lesson_bloc.dart';

@freezed
abstract class LessonEvent with _$LessonEvent{
  const factory LessonEvent.fetchLessonById(int id) = FetchLessonById;
  const factory LessonEvent.fetchAllLessons() = FetchAllLessons;
}
