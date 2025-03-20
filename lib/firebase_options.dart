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
    appId: '1:779549950010:android:90b68e06ab50c2a46bf503',
    messagingSenderId: '779549950010',
    projectId: 'jumli-834c7',
    storageBucket: 'jumli-834c7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqlv-DKZR-zdqFdVhD1LIfpTerpql_2BE',
    appId: '1:779549950010:ios:4d51755ecf610f356bf503',
    messagingSenderId: '779549950010',
    projectId: 'jumli-834c7',
    storageBucket: 'jumli-834c7.firebasestorage.app',
    androidClientId: '779549950010-kfc53m9hu21rktop5f5kk2i808rivdsp.apps.googleusercontent.com',
    iosClientId: '779549950010-nflld00al4ptmtsd7m5696djep15r258.apps.googleusercontent.com',
    iosBundleId: 'com.jumli.appafrica',
  );

}