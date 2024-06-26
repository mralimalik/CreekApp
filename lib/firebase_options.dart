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
    apiKey: 'AIzaSyCtcpjI2wJgIYVverDa0_2qInYbURbavIw',
    appId: '1:1093450275531:web:9655c03eb93bdd2ee1994e',
    messagingSenderId: '1093450275531',
    projectId: 'creekapp-f4408',
    authDomain: 'creekapp-f4408.firebaseapp.com',
    storageBucket: 'creekapp-f4408.appspot.com',
    measurementId: 'G-0LWJ5LV066',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBITBPL-S1yq8qccdZxTjs0F2r2FTUrSyg',
    appId: '1:1093450275531:android:036ed96723f43560e1994e',
    messagingSenderId: '1093450275531',
    projectId: 'creekapp-f4408',
    storageBucket: 'creekapp-f4408.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDcRHYtgOkjHO2gCNHKLmfg0BX9vNCAw8',
    appId: '1:1093450275531:ios:683bcba8e364b2e5e1994e',
    messagingSenderId: '1093450275531',
    projectId: 'creekapp-f4408',
    storageBucket: 'creekapp-f4408.appspot.com',
    iosBundleId: 'com.example.creekapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDcRHYtgOkjHO2gCNHKLmfg0BX9vNCAw8',
    appId: '1:1093450275531:ios:683bcba8e364b2e5e1994e',
    messagingSenderId: '1093450275531',
    projectId: 'creekapp-f4408',
    storageBucket: 'creekapp-f4408.appspot.com',
    iosBundleId: 'com.example.creekapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCtcpjI2wJgIYVverDa0_2qInYbURbavIw',
    appId: '1:1093450275531:web:b412295d86c40510e1994e',
    messagingSenderId: '1093450275531',
    projectId: 'creekapp-f4408',
    authDomain: 'creekapp-f4408.firebaseapp.com',
    storageBucket: 'creekapp-f4408.appspot.com',
    measurementId: 'G-BJRHDQWLSK',
  );
}
