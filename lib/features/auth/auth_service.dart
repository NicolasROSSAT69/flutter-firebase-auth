import 'package:firebase_auth/firebase_auth.dart';
import 'providers/google_auth_provider.dart';
//import 'providers/facebook_auth_provider.dart';

class AuthService {
  Future<UserCredential> signInWithGoogle() async {
    return await MyGoogleAuthProvider.signInWithGoogle();
  }

  /*Future<UserCredential> signInWithFacebook() async {
    return await FacebookAuthProvider.signInWithFacebook();
  }*/

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
