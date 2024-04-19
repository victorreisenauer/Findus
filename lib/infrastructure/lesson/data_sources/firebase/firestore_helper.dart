import "package:cloud_firestore/cloud_firestore.dart";
import "package:injectable/injectable.dart";

@injectable
class FirestoreHelper {
  final Firestore _firestore;

  FirestoreHelper(this._firestore);

  Future<String> fetchExerciseData() async {
    var response =
        await _firestore.collection("exercises").document("6z1bPbTBzqBsaZg9oUpS").get().then((value) => value.data);

    print(await response);

    return null;
  }
}
