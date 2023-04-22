import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC__GUJIgUU4oJZ4_P0l2qCKdLnBVAZxbA",
            authDomain: "pfa-cabinetmedical.firebaseapp.com",
            projectId: "pfa-cabinetmedical",
            storageBucket: "pfa-cabinetmedical.appspot.com",
            messagingSenderId: "879963254230",
            appId: "1:879963254230:web:364b5d7ba86597c9ab4877",
            measurementId: "G-6670NNSVFX"));
  } else {
    await Firebase.initializeApp();
  }
}
