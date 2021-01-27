import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final auth.FirebaseAuth _fbAuth;
  final GoogleSignIn _googleSignIn;
  // final FacebookLogin _facebookSignIn;

  AuthRepository({
    fbAuth,
    googleSignIn,
    facebookSignIn,
  })  : _fbAuth = fbAuth ?? auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();
  // _facebookSignIn = facebookSignIn ?? FacebookLogin();

  auth.User getFBUser() {
    return _fbAuth.currentUser;
  }

  bool isSignedIn() {
    return _fbAuth.currentUser != null;
  }

  Future<auth.User> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final credential = auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        return _signIn(credential);
      }
    } catch (e) {
      print(e.toString());
      return null;
    }

    return null;
  }

  Future<bool> checkIfEmailExists(String email) async {
    final result = await _fbAuth.fetchSignInMethodsForEmail(email);
    print(result);
    return result.length > 0;
  }

  Future<auth.User> _signIn(credential) async {
    try {
      final authResult = await _fbAuth.signInWithCredential(credential);
      return authResult.user;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  // Future<auth.User> signInWithFacebook() async {
  //   final facebookUser = await _facebookSignIn.logIn(['email']);

  //   if (facebookUser != null && facebookUser.accessToken != null) {
  //     final facebookAuth = facebookUser.accessToken;
  //     final credential = auth.FacebookAuthProvider.credential(facebookAuth.token);
  //     return _signIn(credential);
  //   }
  //   return null;
  // }

  void signOut() async {
    if (isSignedIn()) {
      await _fbAuth.signOut();
      await _googleSignIn.signOut();
      // await _facebookSignIn.logOut();
    }
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String generateNonce([int length = 32]) {
    final charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<auth.User> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    try {
      return (await _fbAuth.signInWithEmailAndPassword(email: email, password: password)).user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<auth.User> signUpWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    try {
      return (await _fbAuth.createUserWithEmailAndPassword(email: email, password: password)).user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> resetPasswordEmail({@required String email}) async {
    try {
      await _fbAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
