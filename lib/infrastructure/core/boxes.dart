import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

abstract class Boxes {
  Future<Box> get sessionBox;
  Future<Box> get userBox;
  Future<Box> get personalBox;

  Future<Box> get lessonBox;
  Future<Box> get resultBox;
}

@RegisterAs(Boxes, env: Environment.prod)
@injectable
class ProdBoxes implements Boxes {
  Future<Box> get sessionBox => Hive.openBox("prodSessionBox");
  Future<Box> get userBox => Hive.openBox("ProdUserBox");
  Future<Box> get personalBox => Hive.openBox("prodPersonalBox");

  Future<Box> get lessonBox => Hive.openBox("prodLessonBox");
  Future<Box> get resultBox => Hive.openBox("prodResultBox");
}

@RegisterAs(Boxes, env: Environment.dev)
@injectable
class DevBoxes implements Boxes {
  Future<Box> get sessionBox => Hive.openBox("devSessionBox");
  Future<Box> get userBox => Hive.openBox("devUserBox");
  Future<Box> get personalBox => Hive.openBox("sevPersonalBox");

  Future<Box> get lessonBox => Hive.openBox("devLessonBox");
  Future<Box> get resultBox => Hive.openBox("devResultBox");
}

class TestBoxes implements Boxes {
  // make sure getters call same box instances
  Box _userBox = MockBox();
  Box _personalBox = MockBox();
  Box _sessionBox = MockBox();
  Box _resultBox = MockBox();
  Box _lessonBox = MockBox();

  Future<Box> get sessionBox async => _sessionBox;
  Future<Box> get userBox async => _userBox;
  Future<Box> get personalBox async => _personalBox;

  Future<Box> get lessonBox async => _resultBox;
  Future<Box> get resultBox async => _lessonBox;
}

// mocked boxes for test environment
class MockBox extends Mock implements Box {}
