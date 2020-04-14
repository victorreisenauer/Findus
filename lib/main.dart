import 'package:flutter/material.dart';

import 'package:lrs_app_v3/presenation/lrs_app.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/simple_bloc_delegate.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  configureInjection(Environment.test);
  runApp(LrsApp());
}
