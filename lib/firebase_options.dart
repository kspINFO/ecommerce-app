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
    apiKey: 'AIzaSyC5Ix-8TZzKoqzfW4RedJrbkWVIcDkpJho',
    appId: '1:338097619218:web:48cef514547fde38a4f3cb',
    messagingSenderId: '338097619218',
    projectId: 'ecommerce-app-fc573',
    authDomain: 'ecommerce-app-fc573.firebaseapp.com',
    storageBucket: 'ecommerce-app-fc573.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKp1ftMzgGLNV4U7NNcb4tzpi_jFKXLH8',
    appId: '1:338097619218:android:5d7a0cffb9f804e3a4f3cb',
    messagingSenderId: '338097619218',
    projectId: 'ecommerce-app-fc573',
    storageBucket: 'ecommerce-app-fc573.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5X-v9-0WHxPiTwRsilpp7v-T5hXFAOos',
    appId: '1:338097619218:ios:a5703aaac110b502a4f3cb',
    messagingSenderId: '338097619218',
    projectId: 'ecommerce-app-fc573',
    storageBucket: 'ecommerce-app-fc573.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceAdminApps',
  );
}
