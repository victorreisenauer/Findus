import 'package:flutter/material.dart';

import 'package:lrs_app_v3/presenation/pages/overview/overview_page.dart';

main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: OverviewPage());
  }
}
