import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final auth.FirebaseAuth _fbAuth = auth.FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  auth.User? getFBUser() {
    return _fbAuth.currentUser;
  }

  bool isSignedIn() {
    return _fbAuth.currentUser != null;
  }

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future<auth.User?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();

    if (googleUser == null) return null;

    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return _signIn(credential);
  }

  Future<bool> checkIfEmailExists(String email) async {
    final result = await _fbAuth.fetchSignInMethodsForEmail(email);
    print(result);
    return result.isNotEmpty;
  }

  Future<auth.User?> _signIn(credential) async {
    try {
      final authResult = await _fbAuth.signInWithCredential(credential);
      return authResult.user;
    } catch (e) {
      rethrow;
    }
  }

  void signOut() async {
    if (isSignedIn()) {
      await _fbAuth.signOut();
      await _googleSignIn.signOut();
    }
  }

  // Future<auth.User> signInWithEmailAndPassword({
  //   @required String email,
  //   @required String password,
  // }) async {
  //   try {
  //     return (await _fbAuth.signInWithEmailAndPassword(email: email, password: password)).user;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

  // Future<auth.User> signUpWithEmailAndPassword({
  //   @required String email,
  //   @required String password,
  // }) async {
  //   try {
  //     return (await _fbAuth.createUserWithEmailAndPassword(email: email, password: password)).user;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

}
