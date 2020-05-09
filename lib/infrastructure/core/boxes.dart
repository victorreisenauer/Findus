import 'package:hive/hive.dart';

/// class for accessing storage boxes
abstract class Boxes {
  static Future<Box> get sessionBox => Hive.openBox("sessionBox");
  static Future<Box> get userBox => Hive.openBox("userBox");
  static Future<Box> get personalBox => Hive.openBox("personalBox");
}

abstract class SampleBoxes {
  static Future<Box> get sessionBox => Hive.openBox("sessionBox");
  static Future<Box> get userBox => Hive.openBox("userBox");
  static Future<Box> get personalBox => Hive.openBox("personalBox");
}
