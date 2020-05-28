import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/presentation/lrs_app.dart';
import 'package:lrs_app_v3/simple_bloc_delegate.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  configureInjection();

  runApp(LrsApp());
}
