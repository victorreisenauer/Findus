part of 'lesson_bloc.dart';

@freezed
abstract class LessonState with _$LessonState {
  const factory LessonState.initial() = Initial;
  const factory LessonState.lessonLoading() = LessonLoading;
  const factory LessonState.lessonLoaded(Lesson lesson) = LessonLoaded;
  const factory LessonState.lessonError(LessonFailure error) = LessonError;
  const factory LessonState.allLessonIdsLoaded(List<UniqueId> ids) =
      AllLessonIdsLoaded;
  const factory LessonState.lessonStarted(Exercise exercise, int lessonLength) =
      LessonStarted;
  const factory LessonState.lessonAdvanced(Exercise exercise) = LessonAdvanced;
  const factory LessonState.lessonFinished() = LessonFinished;
  const factory LessonState.lessonAborted() = LessonAborted;
}
