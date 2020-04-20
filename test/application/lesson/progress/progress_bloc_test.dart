import 'package:flutter_test/flutter_test.dart';

import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';

void main() {
  group('ProgressBloc =>', () {
    test('emits Initial state [] on initialization', () {
      final bloc = ProgressBloc();
      expectLater(bloc, emits(ProgressState.initial()));
    });

    test(
        'emits states [initial, UpdatedProgress(double currentProgress)] on StartProgress Event',
        () {
      final bloc = ProgressBloc();
      bloc.add(ProgressEvent.startProgress(15));
      expectLater(
          bloc,
          emitsInOrder([
            ProgressState.initial(),
            ProgressState.progressUpdated(0.0),
          ]));
    });

    test(
        'emits states [initial, ProgressUpdated(double currentProgress)] on UpdateProgress Event',
        () {
      final bloc = ProgressBloc();
      bloc.add(ProgressEvent.startProgress(10));
      bloc.add(ProgressEvent.updateProgress(true));
      expectLater(
          bloc,
          emitsInOrder([
            ProgressState.initial(),
            ProgressState.progressUpdated(0.0),
            ProgressState.progressUpdated(0.1),
          ]));
      bloc.close();
    });
  });
}
