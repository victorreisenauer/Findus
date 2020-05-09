import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class ProdBoxes {
  static Future<Box> get sessionBox => Hive.openBox("prodSessionBox");
  static Future<Box> get userBox => Hive.openBox("ProdUserBox");
  static Future<Box> get personalBox => Hive.openBox("prodPersonalBox");
}

abstract class DevBoxes {
  static Future<Box> get sessionBox => Hive.openBox("devSessionBox");
  static Future<Box> get userBox => Hive.openBox("devUserBox");
  static Future<Box> get personalBox => Hive.openBox("sevPersonalBox");
}

abstract class TestBoxes {
  static Future<Box> get sessionBox => Hive.openBox("testSessionBox");
  static Future<Box> get userBox => Hive.openBox("testUserBox");
  static Future<Box> get personalBox => Hive.openBox("testPersonalBox");
}
