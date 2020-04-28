import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0001/template_0001_bloc.dart';

main() {
  group("Exercise 1 Bloc => ", () {
    test('emits initial state', () {
      final bloc = Template0001Bloc();
      expectLater(bloc, emits(Template0001State.initial()));
      bloc.close();
    });
    test('emits showExercise state', () {
      final bloc = Template0001Bloc();
      expectLater(bloc, emits(Template0001State.initial()));
      bloc.add(Template0001Event.getExercise());
      bloc.close();
    });
  });
}
