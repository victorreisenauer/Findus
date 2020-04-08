import 'package:flutter/material.dart';

import 'package:lrs_app_v3/presenation/lrs_app.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:injectable/injectable.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(LrsApp());
}
