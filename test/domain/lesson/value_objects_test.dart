import 'package:flutter_test/flutter_test.dart';

import '../../../lib/domain/core/value_objects.dart';
import '../../../lib/domain/lesson/exercise.dart';
import '../../../lib/domain/lesson/value_objects.dart';

void main() {
  group( 'Unit Tests for ExerciseType ValueObject => ', () {
  
    final String emptyType = '';
    final String invalidChars = 'testtype!%';
    final String invalidInts = 'testType23';
    final String includesSpaces = 'test type';
    final String validType = 'testType';
    test('return ValueFailure if ExerciseType is empty', () async {
      var failure = ExerciseType(emptyType).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        emptyType);
    });
    test('return ValueFailure if ExerciseType contains invalid chars', () async {
      var failure = ExerciseType(invalidChars).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        invalidChars);
    });

    test('return ValueFailure if ExerciseType contains integers', () async {
      var failure = ExerciseType(invalidInts).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        invalidInts);
    });

    test('return ValueFailure if ExerciseType contains spaces', () async {
      var failure = ExerciseType(includesSpaces).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        includesSpaces);
    });
      
    test('return ExerciseType if type is valid', () async {
      var valid = ExerciseType(validType).value;   
      expect(valid.fold(
        (f) => null,
        (v) => v), 
        validType);
    });
  });



  group( 'Unit Tests for ExerciseData ValueObject => ', () {
  
    final Map emptyData = {};
    final Map invalidKeys = {'hello%!§': 'testData'};
      //TODO: add test for ExerciseData ValueObject
  });



  group( 'Unit Tests for ExerciseList ValueObject => ', () {
  
    final List emptyList = [];
    final List notJustExercisesList = ["test", [], 3];
    ExerciseData exData = ExerciseData({'test' : 'test'});
    final List validExerciseList = [
      Exercise(id: UniqueId(), data: exData, type: ExerciseType('testType')),
      Exercise(id: UniqueId(), data: exData, type: ExerciseType('testType')),
      ];
    test('return ValueFailure if ExerciseList is empty', () async {
      var failure = ExerciseList(emptyList).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        emptyList);
    });
    test('return ValueFailure if ExerciseList contains objects other than Exercise', () async {
      var failure = ExerciseList(notJustExercisesList).value;   
      expect(failure.fold(
        (f) => f.failedValue,
        (_) => null), 
        notJustExercisesList);
    });

    test('return ExerciseType if type is valid', () async {
      var valid = ExerciseList(validExerciseList).value;   
      expect(valid.fold(
        (f) => null,
        (v) => v), 
        validExerciseList);
    });
  });
}

