import 'package:flutter/material.dart';
import 'package:lrs_app_v3/presenation/pages/core/cloud.dart';

main() {
  runApp(_CloudTestApp());
}

class _CloudTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 250,
            width: 350,
            color: Colors.red,
            child: Cloud(),
          ),
        ),
      ),
    );
  }
}
