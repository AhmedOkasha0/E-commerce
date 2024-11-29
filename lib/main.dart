import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helper/bloc_observer.dart';
import 'package:store_app/core/injector/injector.dart';
import 'package:store_app/core/src/app.dart';
import 'package:store_app/firebase_options.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  Bloc.observer = AppBlocObserver();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
