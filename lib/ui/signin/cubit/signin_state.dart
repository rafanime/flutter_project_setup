part of 'signin_cubit.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loginStarted() = _Loading;
  const factory SigninState.loginSuccess({
    @required User user,
  }) = _Success;
  const factory SigninState.loginFailed() = _Failed;
}
