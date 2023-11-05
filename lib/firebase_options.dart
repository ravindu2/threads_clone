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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAArMUUVDFYMrZ57u8FqDYwWUQS2nUhIhc',
    appId: '1:897401208911:android:2227fdd6f9af8d4e0c2a3a',
    messagingSenderId: '897401208911',
    projectId: 'authoapp-b6157',
    storageBucket: 'authoapp-b6157.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAArMUUVDFYMrZ57u8FqDYwWUQS2nUhIhc',
    appId: '1:897401208911:android:2227fdd6f9af8d4e0c2a3a',
    messagingSenderId: '897401208911',
    projectId: 'authoapp-b6157',
    storageBucket: 'authoapp-b6157.appspot.com',
    iosClientId:
        '943912545178-gb1l55s942v7o0ar4m24hp200q2joulf.apps.googleusercontent.com',
    iosBundleId: 'lk.sca.getfood.getFood',
  );
}
