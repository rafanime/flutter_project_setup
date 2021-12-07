import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fitie/models/user.dart';
import 'package:fitie/repositories/auth_repository.dart';
import 'package:fitie/repositories/user_repository.dart';
import 'package:fitie/session/cubit/session_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
part 'get_started_state.dart';
part 'get_started_cubit.freezed.dart';

class GetStartedCubit extends Cubit<GetStartedState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final SessionCubit sessionCubit;

  GetStartedCubit({
    required this.authRepository,
    required this.userRepository,
    required this.sessionCubit,
  }) : super(_Initial());

  void loginWithGoogle() async {
    emit(GetStartedState.loginStarted());
    try {
      final user = await authRepository.signInWithGoogle();
      _handleResponse(fbUser: user);
    } catch (e) {
      emit(GetStartedState.loginFailed());
      print(e);
    }
  }

  void _handleResponse({auth.User? fbUser}) async {
    if (fbUser != null) {
      try {
        // final user = await userRepository.getMyUser(
        //   User(email: fbUser.email),
        //   retries: 15,
        // );
        sessionCubit.updateUser(User(email: fbUser.email));
        emit(GetStartedState.loginSuccess(user: User(email: fbUser.email)));
      } catch (e) {
        emit(GetStartedState.loginFailed());
      }
    } else {
      emit(GetStartedState.inital());
    }
  }

  void getStarted(String email) async {
    emit(GetStartedState.loginStarted());
    try {
      final result = await authRepository.checkIfEmailExists(email);

      emit(result ? GetStartedState.jumpToSignIn(email) : GetStartedState.jumpToSignUp(email));
    } catch (e) {
      emit(GetStartedState.loginFailed());
    }
  }
}
