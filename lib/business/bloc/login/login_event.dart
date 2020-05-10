import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

enum LoginType { SIGNIN, SIGNUP }

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;
  final LoginType type;

  const LoginSubmitted({
    this.email,
    this.password,
    this.type,
  });

  @override
  List<Object> get props => [email, password];
}

class SignWithGooglePressed extends LoginEvent {}

class SignWithFacebookPressed extends LoginEvent {}
