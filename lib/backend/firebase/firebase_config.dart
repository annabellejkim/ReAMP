import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDukEhRG8l4nKA-KkZ75KoFh8Iwp0cXLQ",
            authDomain: "a-m-p-athlete-hub-app-s3uvc9.firebaseapp.com",
            projectId: "a-m-p-athlete-hub-app-s3uvc9",
            storageBucket: "a-m-p-athlete-hub-app-s3uvc9.firebasestorage.app",
            messagingSenderId: "650432000824",
            appId: "1:650432000824:web:ea1fb34a1cc89d55ebc7cd"));
  } else {
    await Firebase.initializeApp();
  }
}
