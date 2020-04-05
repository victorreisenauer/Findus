import 'package:lrs_app_v3/src/app.dart';
import 'package:bloc/bloc.dart' show BlocSupervisor;
import 'package:lrs_app_v3/src/utils/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';


void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(LrsApp());
}
