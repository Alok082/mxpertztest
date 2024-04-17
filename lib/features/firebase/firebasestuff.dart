import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  //for authentication
  static FirebaseAuth auth = FirebaseAuth.instance;
  // static UserCredential? credential;

  static Future<UserCredential?> signup(String email, String password) async {
    try {
      log("${email} ${password}");

      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log(credential.toString());

      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  // sign in
  static Future<UserCredential?> signin(String email, String password) async {
    try {
      log("${email} ${password}");
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      log(credential.toString());
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return null;
  }
}
