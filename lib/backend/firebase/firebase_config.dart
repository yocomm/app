import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB7zmxWi2sBwYuzjrMv5bhlPJ933X4ec68",
            authDomain: "data-1dcf1.firebaseapp.com",
            projectId: "data-1dcf1",
            storageBucket: "data-1dcf1.appspot.com",
            messagingSenderId: "63872070173",
            appId: "1:63872070173:web:dc39ad0f0634fd77724cf4",
            measurementId: "G-0QW9DV26DX"));
  } else {
    await Firebase.initializeApp();
  }
}
