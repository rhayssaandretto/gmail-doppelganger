import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth =
      FirebaseAuth.instance;

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future <UserCredential>? signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    return await _firebaseAuth.signInWithCredential(credential);
  }

  //posible error messages
  // String getErrorMessage(String errorCode) {
  //   switch (errorCode) {
  //     case 'Exception: wrong-password':
  //       return 'The password is incorrect. Please try again';
  //     case 'Exception: user-not-found':
  //       return 'No user found with this email. Please sign up';
  //     case 'Exception: invalid-email':
  //       return 'This email does not exist!';
  //     default:
  //     return 'An unexpected error occurred. Please try again';
  //   }
  // }
}
  // email sign in
  // Future<UserCredential> signInWithEmailPassword(String email, password) async {
  //   try {
  //     UserCredential userCredential = await _firebaseAuth
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     throw Exception(e.code);
  //   }
  // }

  // email sign up
  // Future<UserCredential> signUpWithEmailPassword(String email, password) async {
  //   try {
  //     UserCredential userCredential = await _firebaseAuth
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     throw Exception(e.code);
  //   }
  // }
