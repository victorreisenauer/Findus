import "package:hive/hive.dart";
import "package:injectable/injectable.dart";

@injectable
class Boxes {
  final Future<Box> sessionBox = Hive.openBox("sessionBox");
  final Future<Box> userBox = Hive.openBox("userBox");
  final Future<Box> personalBox = Hive.openBox("personalBox");

  final Future<Box> lessonBox = Hive.openBox("lessonBox");
  final Future<Box> resultBox = Hive.openBox("resultBox");
}
