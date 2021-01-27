// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SigninStateTearOff {
  const _$SigninStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loginStarted() {
    return const _Loading();
  }

// ignore: unused_element
  _Success loginSuccess({@required User user}) {
    return _Success(
      user: user,
    );
  }

// ignore: unused_element
  _Failed loginFailed() {
    return const _Failed();
  }
}

/// @nodoc
// ignore: unused_element
const $SigninState = _$SigninStateTearOff();

/// @nodoc
mixin _$SigninState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res> implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  final SigninState _value;
  // ignore: unused_field
  final $Res Function(SigninState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
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
    return 'SigninState.initial()';
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
    @required Result initial(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SigninState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
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
    return 'SigninState.loginStarted()';
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
    @required Result initial(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
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
    @required Result initial(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginStarted != null) {
      return loginStarted(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SigninState {
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
class __$SuccessCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
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
  const _$_Success({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SigninState.loginSuccess(user: $user)';
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
    @required Result initial(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginSuccess(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
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
    @required Result initial(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _Success implements SigninState {
  const factory _Success({@required User user}) = _$_Success;

  User get user;
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
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
    return 'SigninState.loginFailed()';
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
    @required Result initial(),
    @required Result loginStarted(),
    @required Result loginSuccess(User user),
    @required Result loginFailed(),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginFailed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loginStarted(),
    Result loginSuccess(User user),
    Result loginFailed(),
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
    @required Result initial(_Initial value),
    @required Result loginStarted(_Loading value),
    @required Result loginSuccess(_Success value),
    @required Result loginFailed(_Failed value),
  }) {
    assert(initial != null);
    assert(loginStarted != null);
    assert(loginSuccess != null);
    assert(loginFailed != null);
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loginStarted(_Loading value),
    Result loginSuccess(_Success value),
    Result loginFailed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SigninState {
  const factory _Failed() = _$_Failed;
}
