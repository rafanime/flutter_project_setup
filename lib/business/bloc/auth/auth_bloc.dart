import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:projectname/business/bloc/auth/auth.dart';
import 'package:projectname/services/_index.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;

  StreamSubscription authSubscription;

  AuthBloc({
    @required this.authService,
  });

  @override
  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthStarted) {
      yield* _mapAuthStarted();
    } else if (event is AuthSignedIn) {
      yield* _mapSignedIn();
    } else if (event is AuthSignedOut) {
      yield* _mapSignedOut();
    }
  }

  Stream<AuthState> _mapAuthStarted() async* {
    yield AuthState.loading();

    authSubscription = authService.onAuthStateChanged.listen((user) {
      if (user != null) {
        add(AuthSignedIn());
      } else {
        add(AuthSignedOut());
      }
    });
  }

  Stream<AuthState> _mapSignedIn() async* {
    yield AuthState.loading();

    try {
      final fbUser = await authService.getCurrentUser();

      yield AuthState.authed(fbUser);
    } on PlatformException catch (e) {
      yield AuthState.failed(e.message);
    }
  }

  Stream<AuthState> _mapSignedOut() async* {
    authService.signOut();
    yield AuthState.initial();
  }

  @override
  Future<void> close() {
    authSubscription?.cancel();
    return super.close();
  }
}
