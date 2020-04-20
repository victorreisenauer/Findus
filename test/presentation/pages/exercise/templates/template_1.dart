import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_1/template_1.dart';

main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Template_1()),
      ),
    );
  }
}
