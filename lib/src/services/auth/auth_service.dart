import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth =
      FirebaseAuth.instance; //create an instance of FirebaseAuth

  User? getCurrentUser() {
    //get current user
    return _firebaseAuth.currentUser;
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

  // sign out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  signInWithGoogle() async {
    // - begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    // sign in with credential
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
