import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';

class MockRemoteLessonDataSource extends Mock
    implements RemoteLessonDataSource {}

class MockLocalLessonDataSource extends Mock implements LocalLessonDataSource {}

class MockNetworkInfoImpl extends Mock implements NetworkInfo {}

class MockLessonModel extends Mock implements LessonModel {}

class MockLessonResult extends Mock implements LessonResult {}

class MockLesson extends Mock implements Lesson {}

main() {
  LessonRepository repository;
  MockNetworkInfoImpl mockNetworkInfo;
  MockLocalLessonDataSource mockLocalLessonDataSource;
  MockRemoteLessonDataSource mockRemoteLessonDataSource;

  setUp(() {
    mockLocalLessonDataSource = MockLocalLessonDataSource();
    mockRemoteLessonDataSource = MockRemoteLessonDataSource();
    mockNetworkInfo = MockNetworkInfoImpl();
    repository = LessonRepository(
      remoteData: mockRemoteLessonDataSource,
      localData: mockLocalLessonDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('LessonRepositoy =>', () {
    final UniqueId _id = UniqueId();
    final LessonModel _lessonModel = MockLessonModel();
    final Lesson _lesson = MockLesson();
    final List _lessonList = [_lesson, _lesson, _lesson];

    final LessonResult _lessonResult = MockLessonResult();
    final List _lessonResultList = [
      _lessonResult,
      _lessonResult,
      _lessonResult,
    ];

    final List _lessonModelList = [_lessonModel, _lessonModel, _lessonModel];

    test('checks if device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      //act
      repository.getLessonById(_id);
      //assert
      verify(mockNetworkInfo.isConnected);
    });

    test('hashes UniqueIds back into server ids and back correctly', () {});

    group('handles authentication & session', () {
      test('gets user session if user is authenticated', () {});

      test('returns a failure if user is unauthenticated (no session)', () {});
    });

    group('when device is online ', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test('gets user session ', () {});

      test('should close session every time data transfer is complete', () {});

      test('should get and cache all available lessons on update()', () async {
        // arrange
        when(mockRemoteLessonDataSource.getAvailableLessonData()).thenAnswer(
          (_) async* {
            for (LessonModel model in _lessonModelList) {
              yield model;
            }
          },
        );
        // act
        repository.update();
        // assert
        verify(mockRemoteLessonDataSource.getAvailableLessonData());
        verify(mockLocalLessonDataSource.cacheLessonResultModel(any));
      });

      test('should push all new lesson responses on update()', () async {
        // arrange
        when(mockRemoteLessonDataSource.pushResults(any)).thenAnswer(null);
        // act
        repository.saveResult(_lessonResult);
        // assert
        verify(mockRemoteLessonDataSource.pushResults(_lessonResultList));
      });
    });
    group('when device is offline or online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      test('should get available lesson ids on getUserLessonIds', () async {
        // arrange
        when(mockLocalLessonDataSource.getUserLessonIds())
            .thenAnswer((_) async* {
          for (Lesson _lesson in _lessonList) {
            yield _id;
          }
        });
        // act
        final response = repository.getUserLessonIds();
        // assert
        expect(
          // test if every obtained id in stream is the id mocked above
          response.fold((_) => {}, (stream) => stream.every((id) => id == _id)),
          () {},
        );
      });

      test('should go through cache and get lesson by id on getLessonById', () {
        //arrange
        when(mockLocalLessonDataSource.getLessonById(_id))
            .thenAnswer((_) async => _lessonModel);
        //act
        final response = repository.getLessonById(_id);
        //assert
        verify(mockLocalLessonDataSource.getLessonById(any));
        expect(response, _lessonModel.toDomain());
      });
      test('should throw failure is id is not awailableon getLessonById', () {
        //arrange
        when(mockLocalLessonDataSource.getLessonById(any))
            .thenAnswer((_) => throw Exception());
        // TODO: what happens if id is not found?
        //act
        //final response =
      });

      test('should save lessonResults in cache on saveResults', () {});

      test('should be able to get results from cache by id and/or timestamp',
          () {});
    });
  });
}
