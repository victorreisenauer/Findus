import "package:flutter/material.dart";
import "package:hive/hive.dart";
import "package:path_provider/path_provider.dart" as path_provider;

import "injection.dart";
import "presentation/lrs_app.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  configureInjection();

  runApp(LrsApp());
}
