import 'package:built_value/built_value.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  bool get isLoading;

  @nullable
  String get error;

  @nullable
  FirebaseUser get fbUser;

  bool get isAuthed => fbUser != null;
  bool get hasFailed => error != null;

  static void _initializeBuilder(AuthStateBuilder b) => b..isLoading = false;

  factory AuthState.initial() {
    return AuthState((b) => b);
  }

  factory AuthState.loading() {
    return AuthState((b) => b..isLoading = true);
  }

  factory AuthState.authed(FirebaseUser fbUser) {
    return AuthState((b) => b..fbUser = fbUser);
  }

  factory AuthState.failed(String error) {
    return AuthState((b) => b..error = error);
  }

  AuthState._();
  factory AuthState([updates(AuthStateBuilder b)]) = _$AuthState;
}
