import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/presentation/lrs_app.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/simple_bloc_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  configureInjection(Environment.prod);

  runApp(LrsApp());
}
