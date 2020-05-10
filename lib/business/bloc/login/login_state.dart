import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  bool get isSubmitting;
  bool get isSuccess;

  @nullable
  String get error;

  bool get hasFailed => error != null;

  static void _initializeBuilder(LoginStateBuilder b) => b
    ..isSubmitting = false
    ..isSuccess = false;

  factory LoginState.initial() {
    return LoginState((b) => b);
  }

  factory LoginState.submitting() {
    return LoginState((b) => b..isSubmitting = true);
  }

  factory LoginState.success() {
    return LoginState((b) => b..isSuccess = true);
  }

  factory LoginState.failed(String error) {
    return LoginState((b) => b..error = error);
  }

  LoginState._();
  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;
}
