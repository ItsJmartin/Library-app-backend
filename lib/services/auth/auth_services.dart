import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // instance of auth services
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // sign in
  Future<UserCredential> signInWithEmailPPassword(
      String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sign up
  Future<UserCredential> signUpWithDetails(
      String userName, email, password, confirmPw) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sign out

  // error handling
}
