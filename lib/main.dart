import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:hive/hive.dart";
import "package:path_provider/path_provider.dart" as path_provider;

import "injection.dart";
import "presentation/lrs_app.dart";
import "simple_bloc_delegate.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocDelegate();
  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  configureInjection();

  runApp(LrsApp());
}
