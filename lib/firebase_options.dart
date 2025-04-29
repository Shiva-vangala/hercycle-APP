import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError('DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'your-android-api-key',
    appId: 'your-android-app-id',
    messagingSenderId: 'your-sender-id',
    projectId: 'hercycle-5719f',
    storageBucket: 'hercycle-5719f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'your-ios-api-key',
    appId: 'your-ios-app-id',
    messagingSenderId: 'your-sender-id',
    projectId: 'hercycle-5719f',
    storageBucket: 'hercycle-5719f.firebasestorage.app',
    iosBundleId: 'com.example.hercycleplus',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAMQrt966YaKjG9dHbcpdnQ2tC7HPmXe_Q',
    appId: '1:948457577723:web:389b7f122c7c654da0245e',
    messagingSenderId: '948457577723',
    projectId: 'hercycle-5719f',
    storageBucket: 'hercycle-5719f.firebasestorage.app',
  );
}