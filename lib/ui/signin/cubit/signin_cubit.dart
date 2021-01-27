import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:projectname/models/user.dart';
import 'package:projectname/repositories/auth_repository.dart';
import 'package:projectname/repositories/user_repository.dart';
import 'package:projectname/session/cubit/session_cubit.dart';

part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SigninCubit extends Cubit<SigninState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final SessionCubit sessionCubit;
  String email;

  SigninCubit({
    @required this.email,
    @required this.authRepository,
    @required this.userRepository,
    @required this.sessionCubit,
  }) : super(SigninState.initial());

  void signInWithEmailAndPassword(String password) async {
    emit(SigninState.loginStarted());
    try {
      final user = await authRepository.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _handleResponse(fbUser: user);
    } catch (e) {
      emit(SigninState.loginFailed());
      print(e);
    }
  }

  void _handleResponse({auth.User fbUser}) async {
    if (fbUser != null) {
      try {
        final user = await userRepository.getMyUser(
          User(email: fbUser.email),
          retries: 15,
        );
        sessionCubit.loggedIn(user);
        emit(SigninState.loginSuccess(user: user));
      } catch (e) {
        emit(SigninState.loginFailed());
      }
    } else {
      emit(_Initial());
    }
  }
}
