import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectname/models/user.dart';
import 'package:projectname/repositories/auth_repository.dart';
import 'package:projectname/repositories/user_repository.dart';
import 'package:projectname/session/cubit/session_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final SessionCubit sessionCubit;
  String email;

  SignupCubit({
    @required this.email,
    @required this.authRepository,
    @required this.userRepository,
    @required this.sessionCubit,
  }) : super(SignupState.initial(email));

  void signUpWithEmailAndPassword({String email, String password}) async {
    emit(SignupState.signupStarted(email));
    try {
      final user = await authRepository.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      _handleResponse(fbUser: user);
    } catch (e) {
      emit(SignupState.signupFailed(email));
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
        emit(SignupState.signupSuccess(user: user));
      } catch (e) {
        emit(SignupState.signupFailed(email));
      }
    } else {
      emit(_Initial(email));
    }
  }
}
