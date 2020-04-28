import 'package:lrs_app_v3/domain/core/value_objects.dart';

abstract class SamplesGenerator {
  String getSampleEncodedJson();
  Map getSampleDecodedJson();
  Object getSampleObject();
  ObjectList<Object> getSampleObjectList();
}
