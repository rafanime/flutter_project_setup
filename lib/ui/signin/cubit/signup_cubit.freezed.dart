// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

// ignore: unused_element
  _Initial initial(String email) {
    return _Initial(
      email,
    );
  }

// ignore: unused_element
  _Loading signupStarted(String email) {
    return _Loading(
      email,
    );
  }

// ignore: unused_element
  _Success signupSuccess({String email, @required User user}) {
    return _Success(
      email: email,
      user: user,
    );
  }

// ignore: unused_element
  _Failed signupFailed(String email) {
    return _Failed(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  String get email;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String email),
    @required Result signupStarted(String email),
    @required Result signupSuccess(String email, User user),
    @required Result signupFailed(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String email),
    Result signupStarted(String email),
    Result signupSuccess(String email, User user),
    Result signupFailed(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result signupStarted(_Loading value),
    @required Result signupSuccess(_Success value),
    @required Result signupFailed(_Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result signupStarted(_Loading value),
    Result signupSuccess(_Success value),
    Result signupFailed(_Failed value),
    @required Result orElse(),
  });

  $SignupStateCopyWith<SignupState> get copyWith;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_Initial(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignupState.initial(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String email),
    @required Result signupStarted(String email),
    @required Result signupSuccess(String email, User user),
    @required Result signupFailed(String email),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return initial(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String email),
    Result signupStarted(String email),
    Result signupSuccess(String email, User user),
    Result signupFailed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result signupStarted(_Loading value),
    @required Result signupSuccess(_Success value),
    @required Result signupFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result signupStarted(_Loading value),
    Result signupSuccess(_Success value),
    Result signupFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial(String email) = _$_Initial;

  @override
  String get email;
  @override
  _$InitialCopyWith<_Initial> get copyWith;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_Loading(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignupState.signupStarted(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String email),
    @required Result signupStarted(String email),
    @required Result signupSuccess(String email, User user),
    @required Result signupFailed(String email),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupStarted(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String email),
    Result signupStarted(String email),
    Result signupSuccess(String email, User user),
    Result signupFailed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupStarted != null) {
      return signupStarted(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result signupStarted(_Loading value),
    @required Result signupSuccess(_Success value),
    @required Result signupFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result signupStarted(_Loading value),
    Result signupSuccess(_Success value),
    Result signupFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupStarted != null) {
      return signupStarted(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignupState {
  const factory _Loading(String email) = _$_Loading;

  @override
  String get email;
  @override
  _$LoadingCopyWith<_Loading> get copyWith;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({String email, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object email = freezed,
    Object user = freezed,
  }) {
    return _then(_Success(
      email: email == freezed ? _value.email : email as String,
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
  const _$_Success({this.email, @required this.user}) : assert(user != null);

  @override
  final String email;
  @override
  final User user;

  @override
  String toString() {
    return 'SignupState.signupSuccess(email: $email, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String email),
    @required Result signupStarted(String email),
    @required Result signupSuccess(String email, User user),
    @required Result signupFailed(String email),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupSuccess(email, user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String email),
    Result signupStarted(String email),
    Result signupSuccess(String email, User user),
    Result signupFailed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupSuccess != null) {
      return signupSuccess(email, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result signupStarted(_Loading value),
    @required Result signupSuccess(_Success value),
    @required Result signupFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result signupStarted(_Loading value),
    Result signupSuccess(_Success value),
    Result signupFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignupState {
  const factory _Success({String email, @required User user}) = _$_Success;

  @override
  String get email;
  User get user;
  @override
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_Failed(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_Failed implements _Failed {
  const _$_Failed(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignupState.signupFailed(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String email),
    @required Result signupStarted(String email),
    @required Result signupSuccess(String email, User user),
    @required Result signupFailed(String email),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupFailed(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String email),
    Result signupStarted(String email),
    Result signupSuccess(String email, User user),
    Result signupFailed(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupFailed != null) {
      return signupFailed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result signupStarted(_Loading value),
    @required Result signupSuccess(_Success value),
    @required Result signupFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(signupStarted != null);
    assert(signupSuccess != null);
    assert(signupFailed != null);
    return signupFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result signupStarted(_Loading value),
    Result signupSuccess(_Success value),
    Result signupFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signupFailed != null) {
      return signupFailed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SignupState {
  const factory _Failed(String email) = _$_Failed;

  @override
  String get email;
  @override
  _$FailedCopyWith<_Failed> get copyWith;
}
