import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task_project/core/developer.dart';
typedef FbAuthStateListener = void Function({required bool status});

class AuthService {

   final   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignIn = await GoogleSignIn().signIn();
      if (googleSignIn == null) {
        return null;
      }
      final GoogleSignInAuthentication gAuth =
          await googleSignIn.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken, idToken: gAuth.idToken);
      UserCredential userCredential =  await _firebaseAuth.signInWithCredential(credential);
      print("Success");
          return userCredential;
    } catch (e) {
      IO().logError(e.toString());
      return null;
    }
  }



  StreamSubscription checkUserState({required FbAuthStateListener listener}){
    return _firebaseAuth.authStateChanges().listen((User? user) {
      listener(status: user != null);
    });
  }
}