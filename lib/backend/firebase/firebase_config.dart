import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB5HArsjHjg5jRHyz9TR4-QwPzAqJLdbHs",
            authDomain: "zktrade2023.firebaseapp.com",
            projectId: "zktrade2023",
            storageBucket: "zktrade2023.appspot.com",
            messagingSenderId: "786824030322",
            appId: "1:786824030322:web:2b8f117ab184e121253aeb",
            measurementId: "G-ZJM8RNJ59B"));
  } else {
    await Firebase.initializeApp();
  }
}
