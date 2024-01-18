import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDGBng4tGPRvOZBsWu39rcOhNsCpvz92ks",
            authDomain: "marketpump-9398f.firebaseapp.com",
            projectId: "marketpump-9398f",
            storageBucket: "marketpump-9398f.appspot.com",
            messagingSenderId: "603936387060",
            appId: "1:603936387060:web:cd8cf2705dd0f9dd07d3a1"));
  } else {
    await Firebase.initializeApp();
  }
}
