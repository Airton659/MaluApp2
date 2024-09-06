import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBnc2qS_0K2SIVnaRNHLPPmMTCdUa_CQLE",
            authDomain: "malu-croches-93nfql.firebaseapp.com",
            projectId: "malu-croches-93nfql",
            storageBucket: "malu-croches-93nfql.appspot.com",
            messagingSenderId: "24242334741",
            appId: "1:24242334741:web:572b0562c5549db7bf321c"));
  } else {
    await Firebase.initializeApp();
  }
}
