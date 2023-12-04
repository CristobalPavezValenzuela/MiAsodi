import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAQN3s7wwid2eiQsEcLqLIaTam3hB0irlQ",
            authDomain: "proyectoasodi.firebaseapp.com",
            projectId: "proyectoasodi",
            storageBucket: "proyectoasodi.appspot.com",
            messagingSenderId: "1029695527075",
            appId: "1:1029695527075:web:be15b02e571eb78d368716",
            measurementId: "G-FW0NE1SF5M"));
  } else {
    await Firebase.initializeApp();
  }
}
