import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/core/local_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';

// Tests implementation with actual storage boxes and data.
main() {
  configureInjection();
  Hive.init('C:/Users/victo/OneDrive/projects/findus/db');

  // Dependencies
  Boxes boxes = getIt<Boxes>();

  // Production object with mocked dependencies
  LocalLessonDataSourceFacade testLocalData = LocalLessonDataSource(boxes);

  // Instantiate objects for testing

  String testUserIdStr = "a4cdeb10-a285-11ea-bed0-ab5e0a04210d";
  String testUserIdStr2 = "b4cdeb10-a285-11ea-bed0-ab5e0a04210d";
  UniqueId testUserId = UniqueId.fromUniqueId(testUserIdStr);

  String testLessonIdStr = "112ca4f0-a285-11ea-dd94-eb9bcd40b4a0";
  UniqueId testLessonId = UniqueId.fromUniqueId(testLessonIdStr);

  LessonModel testLessonModel1 = LessonModel(
    id: testLessonIdStr,
    exerciseList: [],
    assignedToUserId: testUserIdStr,
  );

  LessonModel testLessonModel2 = LessonModel(
    id: "112ca4f0-a285-11ea-dd94-eb9bcd40b4a1",
    exerciseList: [],
    assignedToUserId: testUserIdStr,
  );

  LessonModel testLessonModel3 = LessonModel(
    id: "112ca4f0-a285-11ea-dd94-eb9bcd40b4a2",
    exerciseList: [],
    assignedToUserId: testUserIdStr,
  );

  String testLessonResultIdStr = "222ca4f0-a285-11ea-dd94-eb9bcd90b4a0";
  UniqueId testLessonResultId = UniqueId.fromUniqueId(testLessonResultIdStr);

  LessonResultModel testLessonResultModel1 = LessonResultModel(
    id: testLessonResultIdStr,
    resultsList: [],
    assignedToUserId: testUserIdStr,
  );

  LessonResultModel testLessonResultModel2 = LessonResultModel(
    id: "222ca4f0-a285-11ea-dd94-eb9bcd40b4a1",
    resultsList: [],
    assignedToUserId: testUserIdStr,
  );

  LessonResultModel testLessonResultModel3 = LessonResultModel(
    id: "222ca4f0-a285-11ea-dd94-eb9bcd40b4a2",
    resultsList: [],
    assignedToUserId: testUserIdStr,
  );

  // reset boxes before every test
  setUpAll(() async {
    await boxes.lessonBox.then((value) => value.clear());
    await boxes.resultBox.then((value) => value.clear());
  });

  // Tests
  group('LocalLessonRepository => ', () {
    group('on getLessonIdsForUser(userId) =>', () {
      group('if cache is empty => ', () {
        test('throws CacheEmpty Exception', () async {
          var box = await boxes.lessonBox.then((value) => value);
          // make sure cache is empty
          await box.clear();

          testLocalData.getLessonIdsForUser(testUserId).handleError((e) {
            expect(e, isInstanceOf<CacheEmptyException>());
          });
        });
      });

      group('if cache is not empty => ', () {
        test('if successful, returns all lessonModelIds for userId', () async {
          // populate cache with lessons
          await testLocalData.cacheLessonModel(testLessonModel1);
          await testLocalData.cacheLessonModel(testLessonModel2);
          await testLocalData.cacheLessonModel(testLessonModel3);

          expect(await testLocalData.getLessonIdsForUser(testUserId).toList(), [
            UniqueId.fromUniqueId(testLessonModel1.id),
            UniqueId.fromUniqueId(testLessonModel2.id),
            UniqueId.fromUniqueId(testLessonModel3.id),
          ]);
        });
      });
    });

    group('on getLessonResultIdsForUser(userId) => ', () {
      test('if cache is empty, throws CacheEmptyException', () async {
        // get resultBox
        var box = await boxes.resultBox.then((value) => value);
        // make sure cache is empty
        await box.clear();

        testLocalData.getLessonResultIdsForUser(testUserId).handleError((e) {
          expect(e, isInstanceOf<CacheEmptyException>());
        });
      });
      test('if there are no results for user, returns null', () async {
        LessonResultModel resultModelWithOtherAssignedUser = LessonResultModel(
          id: testLessonResultIdStr,
          resultsList: [],
          assignedToUserId: testUserIdStr2,
        );
        // populate cache with results, but none assigned to some user
        // make sure testLocalData.cacheLessonResultModel is working before testing this
        await testLocalData
            .cacheLessonResultModel(resultModelWithOtherAssignedUser);

        // expect no lessonResultModels being returned for this user
        expect(
            await testLocalData.getLessonResultIdsForUser(testUserId).toList(),
            []);
      });

      test('if successful, returns resultModelIds in a stream', () async {
        // populate cache with results, but none assigned to some user
        // make sure testLocalData.cacheLessonResultModel is working before testing this
        await testLocalData.cacheLessonResultModel(testLessonResultModel1);
        await testLocalData.cacheLessonResultModel(testLessonResultModel2);
        await testLocalData.cacheLessonResultModel(testLessonResultModel3);

        // expect no lessonResultModels being returned for this user
        expect(
            testLocalData.getLessonResultIdsForUser(testUserId),
            emitsInAnyOrder([
              UniqueId.fromUniqueId(testLessonResultModel1.id),
              UniqueId.fromUniqueId(testLessonResultModel2.id),
              UniqueId.fromUniqueId(testLessonResultModel3.id),
            ]));
      });
    });

    group('on getLessonModelById(lessonId) =>', () {
      test('if successful, returns LessonModel ', () async {
        await testLocalData.cacheLessonModel(testLessonModel1);

        expect(await testLocalData.getLessonModelById(testLessonId),
            testLessonModel1);
      });
      test('if cache empty, raises CacheEmptyException', () async {
        var box = await boxes.lessonBox.then((value) => value);
        // ensure cache is empty
        await box.clear();

        await testLocalData.getLessonModelById(testLessonId).catchError((e) {
          expect(e, isInstanceOf<CacheEmptyException>());
        });
      });
      test('if lessonId not found in cache, raises KeyNotFoundException',
          () async {
        // ensure box is not empty, but use cache testLessonModel2
        await testLocalData.cacheLessonModel(testLessonModel2);

        // then try to fetch testLessonModel(not testLessonModel2)
        await testLocalData.getLessonModelById(testLessonId).catchError((e) {
          expect(e, isInstanceOf<KeyNotFoundException>());
        });
      });
    });
    group('on getLessonResultModelById(lessonModelId) => ', () {
      test('if successful, returns LessonResultModel', () async {
        // populate cache
        await testLocalData.cacheLessonResultModel(testLessonResultModel1);

        // expect fetched lessonResultModel matching original resultModel
        expect(await testLocalData.getLessonResultModelById(testLessonResultId),
            testLessonResultModel1);
      });
      test('if cache empty, raises CacheEmptyException', () async {
        // get resultBox
        var box = await boxes.resultBox.then((value) => value);
        // ensure cache is empty
        await box.clear();
        // expect CacheEmptyException to be thrown
        await testLocalData
            .getLessonResultModelById(testLessonId)
            .catchError((e) {
          expect(e, isInstanceOf<CacheEmptyException>());
        });
      });

      test('if lessonModelId not found in cache, raises KayNotFoundException',
          () async {
        // ensure box is not empty, but use cache testLessonResultModel2
        await testLocalData.cacheLessonResultModel(testLessonResultModel2);

        // then try to fetch testLessonResultModel(not testLessonResultModel2)
        await testLocalData
            .getLessonResultModelById(testLessonId)
            .catchError((e) {
          expect(e, isInstanceOf<KeyNotFoundException>());
        });
      });
    });
    group('on cacheLessonModel(lessonModel) =>', () {
      test('gets lesson and caches LessonModel by lessonId', () async {
        // cache testLessonModel with
        await testLocalData.cacheLessonModel(testLessonModel1);

        // expect model fetched directly from box matches testLessonModel
        await boxes.lessonBox.then((box) async {
          var fetchedData = await box.get(testLessonIdStr);
          LessonModel constructedModel = LessonModel.fromJson(fetchedData);
          expect(constructedModel, testLessonModel1);
        });
      });
    });

    group('on cacheLessonResultModel(resultModel) =>', () {
      test('if successful, caches LessonResultModel', () async {
        // cache testLessonResultModel with
        await testLocalData.cacheLessonResultModel(testLessonResultModel1);

        // expect model fetched directly from box matches testLessonModel
        await boxes.resultBox.then((box) async {
          var fetchedData = await box.get(testLessonResultIdStr);
          LessonResultModel constructedModel =
              LessonResultModel.fromJson(fetchedData);
          expect(constructedModel, testLessonResultModel1);
        });
      });
    });

    group('on removeLessonModel(lessonModelId) => ', () {
      test('if successful, permanently deletes lessonModel entry', () {
        print("test not implemented");
      });
    });
    group('on removeLessonResultModel => ', () {
      test('if successful, permanently deletes lessonResultModel entry', () {
        print("test not implemented");
      });
    });
  });
}
