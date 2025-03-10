import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCI93wPJT5rNcWEcAVJXfFDN-dEWPiiFrw',
    appId: '1:779549950010:android:5ee16f07fb2399096bf503',
    messagingSenderId: '779549950010',
    projectId: 'jumli-834c7',
    storageBucket: 'jumli-834c7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC27TREu_55_DlE08ElO4QiAJnFO462EE',
    appId: '1:779549950010:ios:3d6c85c2763affe26bf503',
    messagingSenderId: '779549950010',
    projectId: 'jumli-834c7',
    storageBucket: 'jumli-834c7.firebasestorage.app',
    androidClientId: '779549950010-pl3vujrs4g9ac3ea83o8vcuifg8bsn5k.apps.googleusercontent.com',
    iosClientId: '779549950010-5v9pcg6b6deumfbhvjnejck6dk7o8100.apps.googleusercontent.com',
    iosBundleId: 'com.jumilapp.africa',
  );

}