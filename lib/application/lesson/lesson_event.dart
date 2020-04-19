part of 'lesson_bloc.dart';

@freezed
abstract class LessonEvent with _$LessonEvent {
  const factory LessonEvent.fetchAllLessons() = FetchAllLessons;
  const factory LessonEvent.lessonsReceived(
          Either<LessonFailure, ObjectList<Lesson>> failureOrLessons) =
      LessonsReceived;
  const factory LessonEvent.startLesson(UniqueId id) = StartLesson;
  const factory LessonEvent.advanceLesson() = AdvanceLesson;
  // TODO: create designated Results Object to hold results data
  const factory LessonEvent.finishLesson(Object results) = FinishLesson;
  const factory LessonEvent.abortLesson() = AbortLesson;
}
