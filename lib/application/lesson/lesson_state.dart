part of 'lesson_bloc.dart';

@freezed
abstract class LessonState with _$LessonState {
  const factory LessonState.initial() = Initial;
  const factory LessonState.lessonLoading() = LessonLoading;
  const factory LessonState.lessonLoaded(Lesson lesson) = LessonLoaded;
  const factory LessonState.lessonError(LessonFailure error) = LessonError;
  const factory LessonState.allLessonsLoading() = AllLessonsLoading;
  const factory LessonState.allLessonsLoaded(ObjectList<Lesson> lessons) =
      AllLessonsLoaded;
  const factory LessonState.allLessonsError(LessonFailure error) =
      AllLessonsError;
}
