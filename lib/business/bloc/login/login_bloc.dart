import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:projectname/business/bloc/login/login.dart';
import 'package:projectname/services/_index.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService authService;

  LoginBloc({
    @required this.authService,
  });

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginSubmitted) {
      yield* _mapFormSubmitted(event);
    } else if (event is SignWithGooglePressed) {
      yield* _mapGooglePressed();
    } else if (event is SignWithFacebookPressed) {
      yield* _mapFacebookPressed();
    }
  }

  Stream<LoginState> _mapFormSubmitted(LoginSubmitted event) async* {
    yield LoginState.submitting();

    try {
      if (event.type == LoginType.SIGNIN) {
        await authService.emailSignIn(event.email, event.password);
      } else if (event.type == LoginType.SIGNUP) {
        await authService.emailSignUp(event.email, event.password);
      }
      yield LoginState.success();
    } on PlatformException catch (e) {
      yield LoginState.failed(e.message);
    }
  }

  Stream<LoginState> _mapGooglePressed() async* {
    yield LoginState.submitting();

    try {
      await authService.signInWithGoogle();
      yield LoginState.success();
    } on PlatformException catch (e) {
      yield LoginState.failed(e.message);
    }
  }

  Stream<LoginState> _mapFacebookPressed() async* {
    yield LoginState.submitting();

    try {
      // await authService.signInWithFacebook();
      yield LoginState.success();
    } on PlatformException catch (e) {
      yield LoginState.failed(e.message);
    }
  }
}
