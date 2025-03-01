import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCyMOutaC7InwGjXUfF3byfhLSBi4qmbpg",
            authDomain: "excel-formula-g-p-t-3nw07m.firebaseapp.com",
            projectId: "excel-formula-g-p-t-3nw07m",
            storageBucket: "excel-formula-g-p-t-3nw07m.firebasestorage.app",
            messagingSenderId: "880026547405",
            appId: "1:880026547405:web:5c26865c74453378166584"));
  } else {
    await Firebase.initializeApp();
  }
}
