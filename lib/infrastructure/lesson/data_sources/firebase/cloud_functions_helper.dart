import "package:cloud_functions/cloud_functions.dart";
import "package:injectable/injectable.dart";

@injectable
class CloudFunctionsHelper {
  final CloudFunctions _cloudFunctions;

  CloudFunctionsHelper(this._cloudFunctions);

  HttpsCallable get _lessonsEndpoint => _cloudFunctions.getHttpsCallable(functionName: "getLessons");

  void fetchLessonIds() async {
    var response = await _lessonsEndpoint.call().then((response) => response.data);
    print(response);
  }
}
