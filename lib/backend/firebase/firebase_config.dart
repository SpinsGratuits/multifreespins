import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDlLGYIvSBka7-Y77OqZhjLJEvdzgorJiQ",
            authDomain: "multi-free-spins-da924.firebaseapp.com",
            projectId: "multi-free-spins-da924",
            storageBucket: "multi-free-spins-da924.firebasestorage.app",
            messagingSenderId: "915152897009",
            appId: "1:915152897009:web:ce28c07677c0c7f5a0fa50"));
  } else {
    await Firebase.initializeApp();
  }
}
