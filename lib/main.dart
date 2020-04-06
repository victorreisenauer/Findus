import 'package:flutter/material.dart';

import 'package:lrs_app_v3/presenation/lrs_app.dart';
import 'package:lrs_app_v3/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.dev);
  runApp(LrsApp());
}

