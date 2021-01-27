// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_started_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetStartedStateTearOff {
  const _$GetStartedStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loginStarted() {
    return const _Loading();
  }

// ignore: unused_element
  _Success loginSuccess({User user}) {
    return _Success(
      user: user,
    );
  }

// ignore: unused_element
  _Failed loginFailed() {
    return const _Failed();
  }

// ignore: unused_element
  _JumpToSignIn jumpToSignIn(String email) {
    return _JumpToSignIn(
      email,
    );
  }

// ignore: unused_element
  _JumpToSignUp jumpToSignUp(String email) {
    return _JumpToSignUp(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetStartedState = _$GetStartedStateTearOff();

/// @nodoc
mixin _$GetStartedState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetStartedStateCopyWith<$Res> {
  factory $GetStartedStateCopyWith(
          GetStartedState value, $Res Function(GetStartedState) then) =
      _$GetStartedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetStartedStateCopyWithImpl<$Res>
    implements $GetStartedStateCopyWith<$Res> {
  _$GetStartedStateCopyWithImpl(this._value, this._then);

  final GetStartedState _value;
  // ignore: unused_field
  final $Res Function(GetStartedState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetStartedState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetStartedState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GetStartedState.loginStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginStarted != null) {
      return loginStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginStarted != null) {
      return loginStarted(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetStartedState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Success(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success({this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'GetStartedState.loginSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginSuccess(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginSuccess != null) {
      return loginSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _Success implements GetStartedState {
  const factory _Success({User user}) = _$_Success;

  User get user;
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;
}

/// @nodoc
class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'GetStartedState.loginFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginFailed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginFailed != null) {
      return loginFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements GetStartedState {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
abstract class _$JumpToSignInCopyWith<$Res> {
  factory _$JumpToSignInCopyWith(
          _JumpToSignIn value, $Res Function(_JumpToSignIn) then) =
      __$JumpToSignInCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$JumpToSignInCopyWithImpl<$Res>
    extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$JumpToSignInCopyWith<$Res> {
  __$JumpToSignInCopyWithImpl(
      _JumpToSignIn _value, $Res Function(_JumpToSignIn) _then)
      : super(_value, (v) => _then(v as _JumpToSignIn));

  @override
  _JumpToSignIn get _value => super._value as _JumpToSignIn;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_JumpToSignIn(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_JumpToSignIn implements _JumpToSignIn {
  const _$_JumpToSignIn(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'GetStartedState.jumpToSignIn(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JumpToSignIn &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$JumpToSignInCopyWith<_JumpToSignIn> get copyWith =>
      __$JumpToSignInCopyWithImpl<_JumpToSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return jumpToSignIn(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (jumpToSignIn != null) {
      return jumpToSignIn(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return jumpToSignIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (jumpToSignIn != null) {
      return jumpToSignIn(this);
    }
    return orElse();
  }
}

abstract class _JumpToSignIn implements GetStartedState {
  const factory _JumpToSignIn(String email) = _$_JumpToSignIn;

  String get email;
  _$JumpToSignInCopyWith<_JumpToSignIn> get copyWith;
}

/// @nodoc
abstract class _$JumpToSignUpCopyWith<$Res> {
  factory _$JumpToSignUpCopyWith(
          _JumpToSignUp value, $Res Function(_JumpToSignUp) then) =
      __$JumpToSignUpCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$JumpToSignUpCopyWithImpl<$Res>
    extends _$GetStartedStateCopyWithImpl<$Res>
    implements _$JumpToSignUpCopyWith<$Res> {
  __$JumpToSignUpCopyWithImpl(
      _JumpToSignUp _value, $Res Function(_JumpToSignUp) _then)
      : super(_value, (v) => _then(v as _JumpToSignUp));

  @override
  _JumpToSignUp get _value => super._value as _JumpToSignUp;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_JumpToSignUp(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_JumpToSignUp implements _JumpToSignUp {
  const _$_JumpToSignUp(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'GetStartedState.jumpToSignUp(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JumpToSignUp &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$JumpToSignUpCopyWith<_JumpToSignUp> get copyWith =>
      __$JumpToSignUpCopyWithImpl<_JumpToSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
    @required Result jumpToSignIn(String email),
    @required Result jumpToSignUp(String email),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return jumpToSignUp(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    Result jumpToSignIn(String email),
    Result jumpToSignUp(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (jumpToSignUp != null) {
      return jumpToSignUp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
    @required Result jumpToSignIn(_JumpToSignIn value),
    @required Result jumpToSignUp(_JumpToSignUp value),
  }) {
    assert(inital != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    assert(jumpToSignIn != null);
    assert(jumpToSignUp != null);
    return jumpToSignUp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    Result jumpToSignIn(_JumpToSignIn value),
    Result jumpToSignUp(_JumpToSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (jumpToSignUp != null) {
      return jumpToSignUp(this);
    }
    return orElse();
  }
}

abstract class _JumpToSignUp implements GetStartedState {
  const factory _JumpToSignUp(String email) = _$_JumpToSignUp;

  String get email;
  _$JumpToSignUpCopyWith<_JumpToSignUp> get copyWith;
}
