import 'package:bloc/bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fitie/models/user.dart';
import 'package:fitie/repositories/auth_repository.dart';
import 'package:fitie/repositories/user_repository.dart';

part 'session_cubit.freezed.dart';
part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit({
    required this.authRepository,
    required this.userRepository,
    required this.analytics,
  }) : super(_State());

  final AuthRepository authRepository;
  final UserRepository userRepository;
  final FirebaseAnalytics analytics;
  User? _user;

  User? get currentUser => _user;
  bool get isAuthenticated => _user != null;

  void verifyLogin() async {
    // emit(SessionState.state(
    //   user: state.user,
    //   fetchingCompleted: false,
    // ));
    // final fbUser = authRepository.getFBUser();
    // if (fbUser != null) {
    //   try {
    //     analytics.setUserId(fbUser.uid);
    //     _user = await userRepository.getMyUser(User(email: fbUser.email));
    //     emit(SessionState.state(
    //       user: _user,
    //       fetchingCompleted: true,
    //     ));
    //   } catch (e) {
    //     logout();
    //   }
    // } else {
    //   emit(SessionState.state(
    //     user: state.user,
    //     fetchingCompleted: true,
    //   ));
    // }
  }

  void loggedIn(User user) {
    _user = user;
    emit(SessionState.loggedIn(
      user: user,
      fetchingCompleted: state.fetchingCompleted,
    ));
  }

  void updateUser(User? user) {
    _user = user!;
    emit(SessionState.state(
      user: user,
      fetchingCompleted: state.fetchingCompleted,
    ));
  }

  void logout() {
    // authRepository.signOut();
    // updateUser(null);

    emit(SessionState.loggedOut());
  }
}
