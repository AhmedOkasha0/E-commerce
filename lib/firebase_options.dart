// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAr__imjWQMdsCYr5FWKCWgQk20pTuyIek',
    appId: '1:359225606488:web:c3a3d42c4267823bc9252d',
    messagingSenderId: '359225606488',
    projectId: 'asroo-store-de9cd',
    authDomain: 'asroo-store-de9cd.firebaseapp.com',
    storageBucket: 'asroo-store-de9cd.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDy2A6iD8e01UuFMQTBJ6Vc7TDlCcshE50',
    appId: '1:359225606488:android:e924c62dfe8992bcc9252d',
    messagingSenderId: '359225606488',
    projectId: 'asroo-store-de9cd',
    storageBucket: 'asroo-store-de9cd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYHBmfdKrPwiEaEN51ZlZhUZaooSFJZvM',
    appId: '1:359225606488:ios:ca919b97405f0943c9252d',
    messagingSenderId: '359225606488',
    projectId: 'asroo-store-de9cd',
    storageBucket: 'asroo-store-de9cd.firebasestorage.app',
    iosBundleId: 'com.example.storeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYHBmfdKrPwiEaEN51ZlZhUZaooSFJZvM',
    appId: '1:359225606488:ios:ca919b97405f0943c9252d',
    messagingSenderId: '359225606488',
    projectId: 'asroo-store-de9cd',
    storageBucket: 'asroo-store-de9cd.firebasestorage.app',
    iosBundleId: 'com.example.storeApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAr__imjWQMdsCYr5FWKCWgQk20pTuyIek',
    appId: '1:359225606488:web:019c8b0af1175527c9252d',
    messagingSenderId: '359225606488',
    projectId: 'asroo-store-de9cd',
    authDomain: 'asroo-store-de9cd.firebaseapp.com',
    storageBucket: 'asroo-store-de9cd.firebasestorage.app',
  );

}