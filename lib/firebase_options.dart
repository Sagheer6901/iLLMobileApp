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
    apiKey: 'AIzaSyA0WYOtdqK15WwuxwSbr4lkGUh2Y7oM8Sw',
    appId: '1:179350183340:web:4ab1082eb046d7951d2e09',
    messagingSenderId: '179350183340',
    projectId: 'iiimobile-45dca',
    authDomain: 'iiimobile-45dca.firebaseapp.com',
    storageBucket: 'iiimobile-45dca.appspot.com',
    measurementId: 'G-2VTGW5T1FN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4wAkfa0hl3RDsZL-YxlAJEUzYhxaG1a0',
    appId: '1:179350183340:android:6ec826cfafe58fd91d2e09',
    messagingSenderId: '179350183340',
    projectId: 'iiimobile-45dca',
    storageBucket: 'iiimobile-45dca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD69cFBw5wIIZQCroGPMG46G7yRtniyIqE',
    appId: '1:179350183340:ios:96015db02b0112c11d2e09',
    messagingSenderId: '179350183340',
    projectId: 'iiimobile-45dca',
    storageBucket: 'iiimobile-45dca.appspot.com',
    iosClientId: '179350183340-23dcchk4akkb9dsmsf2p564aicug2mok.apps.googleusercontent.com',
    iosBundleId: 'com.example.outlook',
  );
}