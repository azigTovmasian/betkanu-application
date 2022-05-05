import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

// here we will put all the logic of our application
class GoogleSigninProvider extends ChangeNotifier {
  final googleSignin = GoogleSignIn();
  late bool _isSigningin;

  GoogleSigninProvider() {
    _isSigningin = false;
  }
  bool get isSigningin => _isSigningin;

  set isSigningin(bool isSigningin) {
    _isSigningin = isSigningin;
    notifyListeners();
  }

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    isSigningin = true;
    //this make sure the popup window will show up
    final googleUser = await googleSignin.signIn();
    // we make sure that the user has selected an account
    if (googleUser == null) {
      isSigningin == false;
      return;
    } else {
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // we can use the credential to sign in the firebease auth
      await FirebaseAuth.instance.signInWithCredential(credential);
      isSigningin == false;
      // to update your UI
      notifyListeners();
    }
  }

  void googleLogout() async {
    await googleSignin.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
