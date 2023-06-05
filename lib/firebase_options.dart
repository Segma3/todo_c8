// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyD3BhgJ6DPy4cEpBShWNaIzT0lUxMLaLaY',
    appId: '1:1092862774841:web:fe02df65ed233a563b87e8',
    messagingSenderId: '1092862774841',
    projectId: 'todo-c8-2c4a1',
    authDomain: 'todo-c8-2c4a1.firebaseapp.com',
    storageBucket: 'todo-c8-2c4a1.appspot.com',
    measurementId: 'G-7SXVRN7GFW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCodabfa-Ou052rTitEwOqgZ-1I5bBLgaQ',
    appId: '1:1092862774841:android:a92511653017ecdb3b87e8',
    messagingSenderId: '1092862774841',
    projectId: 'todo-c8-2c4a1',
    storageBucket: 'todo-c8-2c4a1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWudkuyK_jSrh9sl1Y5sO8EbeliilJHqA',
    appId: '1:1092862774841:ios:7842211a261f84ce3b87e8',
    messagingSenderId: '1092862774841',
    projectId: 'todo-c8-2c4a1',
    storageBucket: 'todo-c8-2c4a1.appspot.com',
    iosClientId: '1092862774841-smq1au9u4c16vai3ag41baifptt84u6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoC8',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWudkuyK_jSrh9sl1Y5sO8EbeliilJHqA',
    appId: '1:1092862774841:ios:7842211a261f84ce3b87e8',
    messagingSenderId: '1092862774841',
    projectId: 'todo-c8-2c4a1',
    storageBucket: 'todo-c8-2c4a1.appspot.com',
    iosClientId: '1092862774841-smq1au9u4c16vai3ag41baifptt84u6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoC8',
  );
}