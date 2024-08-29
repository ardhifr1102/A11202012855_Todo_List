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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDf4iwDq48U_TH4LnL4OI7klKJk3FpbAuk',
    appId: '1:895520615994:web:8ba6d5059c577cc4b80f03',
    messagingSenderId: '895520615994',
    projectId: 'to-do-list-f773c',
    authDomain: 'to-do-list-f773c.firebaseapp.com',
    storageBucket: 'to-do-list-f773c.appspot.com',
    measurementId: 'G-4PFKBNWG88',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5Uwtnru9s4FxUin8k5088I_aygrwEtnA',
    appId: '1:895520615994:android:728c222bc829383cb80f03',
    messagingSenderId: '895520615994',
    projectId: 'to-do-list-f773c',
    storageBucket: 'to-do-list-f773c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkIN5pMa6SE2oark0F4eyJ8fbJiJ1rXxw',
    appId: '1:895520615994:ios:52c8d7c09e5989f7b80f03',
    messagingSenderId: '895520615994',
    projectId: 'to-do-list-f773c',
    storageBucket: 'to-do-list-f773c.appspot.com',
    iosBundleId: 'com.example.proyekTodolist',
  );
}
