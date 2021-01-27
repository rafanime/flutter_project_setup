part of 'signup_cubit.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState.initial(
    String email,
  ) = _Initial;
  const factory SignupState.signupStarted(
    String email,
  ) = _Loading;
  const factory SignupState.signupSuccess({
    String email,
    @required User user,
  }) = _Success;
  const factory SignupState.signupFailed(
    String email,
  ) = _Failed;
}
