import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/lesson/exerciseBlocs/exerciseBloc_1/exercise_1_bloc.dart';

main() {
  group("Exercise 1 Bloc => ", () {
    test('emits initial state', () {
      final bloc = Exercise_1Bloc();
      expectLater(bloc, emits(Exercise_1State.initial()));
      bloc.close();
    });
    test('emits showExercise state', () {
      final bloc = Exercise_1Bloc();
      bloc.add(Exercise_1Event.getExercise());
      bloc.close();
    });
  });
}
