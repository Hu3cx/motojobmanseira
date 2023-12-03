import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4OuS1tgctYOyY-4g8zkqJl998GkUANr4",
            authDomain: "motojobpac.firebaseapp.com",
            projectId: "motojobpac",
            storageBucket: "motojobpac.appspot.com",
            messagingSenderId: "35434760799",
            appId: "1:35434760799:web:21f87bd05d358a7b1ae9ea"));
  } else {
    await Firebase.initializeApp();
  }
}
