import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_1/template_1.dart';

main() {
  group('Template1 testing => ', () {
    test('Run app', () {
      runApp(TestApp());
    });
  });
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template1(),
    );
  }
}
