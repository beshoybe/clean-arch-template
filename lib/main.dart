import 'package:bloc/bloc.dart';
import 'package:clean_arch_template/app.dart';
import 'package:clean_arch_template/bloc_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const App());
}
