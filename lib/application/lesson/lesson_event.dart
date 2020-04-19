part of 'lesson_bloc.dart';

@freezed
abstract class LessonEvent with _$LessonEvent {
  const factory LessonEvent.fetchAllLessonIds() = FetchAllLessonIds;
  const factory LessonEvent.lessonIdsReceived(
      Either<LessonFailure, List<UniqueId>> ids) = LessonIdsReceived;
  const factory LessonEvent.startLesson(UniqueId id) = StartLesson;
  const factory LessonEvent.advanceLesson() = AdvanceLesson;
  // TODO: create designated Results Object to hold results data
  const factory LessonEvent.finishLesson(Object results) = FinishLesson;
  const factory LessonEvent.abortLesson() = AbortLesson;
}
