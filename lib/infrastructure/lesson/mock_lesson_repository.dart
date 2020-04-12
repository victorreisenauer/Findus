import 'package:mockito/mockito.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';




@RegisterAs(ILessonFacade, env:Environment.test)
@lazySingleton
class MockLessonRepository extends Mock implements ILessonFacade {}

ILessonFacade mockLessonRepository = MockLessonRepository();