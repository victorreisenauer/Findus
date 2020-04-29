part of 'lesson_bloc.dart';

@freezed
abstract class LessonEvent with _$LessonEvent {
  const factory LessonEvent.fetchAllLessonIds() = FetchAllLessonIds;
  const factory LessonEvent.lessonIdsReceived(
      Either<LessonFailure, List<UniqueId>> ids) = LessonIdsReceived;
  const factory LessonEvent.startLesson(UniqueId id) = StartLesson;
  const factory LessonEvent.finishLesson(List<ExerciseResult> results) =
      FinishLesson;
  const factory LessonEvent.abortLesson() = AbortLesson;
}
