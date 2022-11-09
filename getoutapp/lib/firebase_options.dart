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
    apiKey: 'AIzaSyBssPjWf_wsjpE6zB7wfKWAXiJWIZFagP8',
    appId: '1:366229585841:web:eea80d5a332c83971fc790',
    messagingSenderId: '366229585841',
    projectId: 'get-out-app-14c42',
    authDomain: 'get-out-app-14c42.firebaseapp.com',
    storageBucket: 'get-out-app-14c42.appspot.com',
    measurementId: 'G-07NR6BDXSM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCG7XDTFedOtpvm0w-u7nrC9qgl09fgFqE',
    appId: '1:366229585841:android:3e38ab44a78dd0cd1fc790',
    messagingSenderId: '366229585841',
    projectId: 'get-out-app-14c42',
    storageBucket: 'get-out-app-14c42.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQa3M00W0wp2ktoNJRPDvCK8umxaZ1Dac',
    appId: '1:366229585841:ios:85e12fae33a1f3f61fc790',
    messagingSenderId: '366229585841',
    projectId: 'get-out-app-14c42',
    storageBucket: 'get-out-app-14c42.appspot.com',
    iosClientId: '366229585841-lmqjnf1nbi292buq8ppec9kdjlmldfr3.apps.googleusercontent.com',
    iosBundleId: 'com.example.getoutapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQa3M00W0wp2ktoNJRPDvCK8umxaZ1Dac',
    appId: '1:366229585841:ios:85e12fae33a1f3f61fc790',
    messagingSenderId: '366229585841',
    projectId: 'get-out-app-14c42',
    storageBucket: 'get-out-app-14c42.appspot.com',
    iosClientId: '366229585841-lmqjnf1nbi292buq8ppec9kdjlmldfr3.apps.googleusercontent.com',
    iosBundleId: 'com.example.getoutapp',
  );
}
