import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helper/bloc_observer.dart';
import 'package:store_app/core/injector/injector.dart';
import 'package:store_app/core/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}
