part of 'get_started_cubit.dart';

@freezed
abstract class GetStartedState with _$GetStartedState {
  const factory GetStartedState.inital() = _Initial;
  const factory GetStartedState.loginStarted() = _Loading;
  const factory GetStartedState.loginSuccess({User user}) = _Success;
  const factory GetStartedState.loginFailed() = _Failed;
  const factory GetStartedState.jumpToSignIn(String email) = _JumpToSignIn;
  const factory GetStartedState.jumpToSignUp(String email) = _JumpToSignUp;
}
