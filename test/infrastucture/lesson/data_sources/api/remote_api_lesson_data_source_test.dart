import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:mockito/mockito.dart';

class MockApi extends Mock implements Api {}

main() {
  Api mockApi = MockApi();

  group('[Env: test] RemoteLessonDataSource =>', () {
    setUp(() {});
    group('on Get AvailableLessonData(user) =>', () {
      group('if api is available =>', () {
        test('if successful, returns lessonModels for users lessons', () {});
        test(
            'if user is not authenticated, returns UserUnauthenticatedException',
            () {});
      });

      group('if api is not available => ', () {
        test('returns apiUnavailableException', () {});
      });
    });

    group('on pushResults (list<LessonResults>) => ', () {
      group('if api is available', () {
        test('if successful, pushes results', () {});
      });

      group('if api is not available => ', () {
        test('returns apiUnavailableException', () {});
      });
    });

    group('on close =>', () {
      test('closes api connection', () {});
    });
  });

  group('[Env: prod] RemoteLessonDataSource => ', () {
    group('if user is logged in & api is available', () {
      test('gets lessonJson', () async {
        configureInjection(Env.prod);
        Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');
        AuthFacade auth = getIt<AuthFacade>();
        Api api = getIt<Api>();

        await auth.signInWithEmailAndPassword(
          emailAddress: EmailAddress("Admin"),
          password: Password("admin"),
        );
        print(api.session);

        print(await api.lessonsJson);
      });
    });
  });
}
