import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class AuthService {
  FirebaseAuth _fbAuth;
  GoogleSignIn _googleSignIn;
  //FacebookLogin _facebookSignIn;

  AuthService({
    fbAuth,
    googleSignIn,
    googlePlaces,
    facebookSignIn,
  })  : _fbAuth = fbAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();
  //_facebookSignIn = facebookSignIn ?? FacebookLogin();

  Stream<FirebaseUser> get onAuthStateChanged {
    return _fbAuth.onAuthStateChanged;
  }

  Future<FirebaseUser> getCurrentUser() async {
    return _fbAuth.currentUser();
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _fbAuth.currentUser();
    return currentUser != null;
  }

  Future<FirebaseUser> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return _signIn(credential);
  }

  // Future<FirebaseUser> signInWithFacebook() async {
  //   final facebookUser = await _facebookSignIn.logIn(['email']);
  //   final facebookAuth = await facebookUser.accessToken;
  //   final credential = FacebookAuthProvider.getCredential(
  //     accessToken: facebookAuth.token,
  //   );
  //   return _signIn(credential);
  // }

  Future<FirebaseUser> emailSignUp(String email, String password) async {
    final authResult = await _fbAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return authResult.user;
  }

  Future<FirebaseUser> emailSignIn(String email, String password) async {
    final credential = EmailAuthProvider.getCredential(
      email: email,
      password: password,
    );
    return _signIn(credential);
  }

  Future<FirebaseUser> _signIn(credential) async {
    final authResult = await _fbAuth.signInWithCredential(credential);
    return authResult.user;
  }

  void signOut() async {
    if (await isSignedIn()) {
      await _fbAuth.signOut();
      await _googleSignIn.signOut();
    }
  }
}
