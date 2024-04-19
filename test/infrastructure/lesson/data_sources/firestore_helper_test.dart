import "package:flutter_test/flutter_test.dart";
import "package:lrs_app_v3/infrastructure/lesson/data_sources/firebase/firestore_helper.dart";
import "package:lrs_app_v3/injection.dart";

void main() {
  // set up injection
  configureInjection();
  TestWidgetsFlutterBinding.ensureInitialized();

  // get injected object
  var firestoreHelper = getIt<FirestoreHelper>();

  test("ensure FirestoreHelper is injectible", () {
    expect(firestoreHelper, isNot(null));
  });

  group("[FirestoreHelper]", () {
    group("on fetchExerciseData(UniqueId)", () {
      test("fetches exercise data from Firestore", () async {
        await firestoreHelper.fetchExerciseData();
      });
    });

    group("on fetchLessonData(UniqueId)", () {});
  });
}
