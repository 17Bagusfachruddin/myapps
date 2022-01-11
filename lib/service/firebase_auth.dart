import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future signInAnonymous() async {
    // AuthResult result = auth.signInAnonymously();
  }
}
