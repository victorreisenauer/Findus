import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_failure.freezed.dart';

@freezed
abstract class LessonFailure with _$LessonFailure {
  const factory LessonFailure.unexpected() = Unexpected;
  const factory LessonFailure.unableToUpdate() = UnableToUpdate;
}
