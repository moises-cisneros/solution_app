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
    apiKey: 'AIzaSyAgRsmMZoy7HgZu0-aSt53QSeaSzi2m1B0',
    appId: '1:497379195837:web:2e9f5a60b0013fef81f0d4',
    messagingSenderId: '497379195837',
    projectId: 'solution-storage',
    authDomain: 'solution-storage.firebaseapp.com',
    storageBucket: 'solution-storage.appspot.com',
    measurementId: 'G-558PCNF4FP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFQ-R7Shoz1Kb3UOUlkGEESwdte9PYLbU',
    appId: '1:497379195837:android:09a3eaa018f93d0081f0d4',
    messagingSenderId: '497379195837',
    projectId: 'solution-storage',
    storageBucket: 'solution-storage.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKFgn_Ox8jdayvkQK_gcFuYW4LvqbFF0k',
    appId: '1:497379195837:ios:d0d14f561ab7b56381f0d4',
    messagingSenderId: '497379195837',
    projectId: 'solution-storage',
    storageBucket: 'solution-storage.appspot.com',
    iosClientId: '497379195837-jt78ip8slapnhqmeio4h6gp6au2fhrn3.apps.googleusercontent.com',
    iosBundleId: 'com.example.solution',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKFgn_Ox8jdayvkQK_gcFuYW4LvqbFF0k',
    appId: '1:497379195837:ios:d0d14f561ab7b56381f0d4',
    messagingSenderId: '497379195837',
    projectId: 'solution-storage',
    storageBucket: 'solution-storage.appspot.com',
    iosClientId: '497379195837-jt78ip8slapnhqmeio4h6gp6au2fhrn3.apps.googleusercontent.com',
    iosBundleId: 'com.example.solution',
  );
}
