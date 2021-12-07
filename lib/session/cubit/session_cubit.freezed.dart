// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionStateTearOff {
  const _$SessionStateTearOff();

  _State state({User? user, bool? fetchingCompleted}) {
    return _State(
      user: user,
      fetchingCompleted: fetchingCompleted,
    );
  }

  _FilterChanged filterChanged({User? user, bool? fetchingCompleted}) {
    return _FilterChanged(
      user: user,
      fetchingCompleted: fetchingCompleted,
    );
  }

  _LoggedOut loggedOut({User? user, bool? fetchingCompleted}) {
    return _LoggedOut(
      user: user,
      fetchingCompleted: fetchingCompleted,
    );
  }

  _LoggedIn loggedIn({User? user, bool? fetchingCompleted}) {
    return _LoggedIn(
      user: user,
      fetchingCompleted: fetchingCompleted,
    );
  }
}

/// @nodoc
const $SessionState = _$SessionStateTearOff();

/// @nodoc
mixin _$SessionState {
  User? get user => throw _privateConstructorUsedError;
  bool? get fetchingCompleted => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, bool? fetchingCompleted) state,
    required TResult Function(User? user, bool? fetchingCompleted)
        filterChanged,
    required TResult Function(User? user, bool? fetchingCompleted) loggedOut,
    required TResult Function(User? user, bool? fetchingCompleted) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionStateCopyWith<SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res>;
  $Res call({User? user, bool? fetchingCompleted});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res> implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  final SessionState _value;
  // ignore: unused_field
  final $Res Function(SessionState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? fetchingCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fetchingCompleted: fetchingCompleted == freezed
          ? _value.fetchingCompleted
          : fetchingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool? fetchingCompleted});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$SessionStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? user = freezed,
    Object? fetchingCompleted = freezed,
  }) {
    return _then(_State(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fetchingCompleted: fetchingCompleted == freezed
          ? _value.fetchingCompleted
          : fetchingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State({this.user, this.fetchingCompleted});

  @override
  final User? user;
  @override
  final bool? fetchingCompleted;

  @override
  String toString() {
    return 'SessionState.state(user: $user, fetchingCompleted: $fetchingCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _State &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.fetchingCompleted, fetchingCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingCompleted, fetchingCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(fetchingCompleted);

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, bool? fetchingCompleted) state,
    required TResult Function(User? user, bool? fetchingCompleted)
        filterChanged,
    required TResult Function(User? user, bool? fetchingCompleted) loggedOut,
    required TResult Function(User? user, bool? fetchingCompleted) loggedIn,
  }) {
    return state(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
  }) {
    return state?.call(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(user, fetchingCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements SessionState {
  const factory _State({User? user, bool? fetchingCompleted}) = _$_State;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool? get fetchingCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterChangedCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$FilterChangedCopyWith(
          _FilterChanged value, $Res Function(_FilterChanged) then) =
      __$FilterChangedCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool? fetchingCompleted});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$FilterChangedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res>
    implements _$FilterChangedCopyWith<$Res> {
  __$FilterChangedCopyWithImpl(
      _FilterChanged _value, $Res Function(_FilterChanged) _then)
      : super(_value, (v) => _then(v as _FilterChanged));

  @override
  _FilterChanged get _value => super._value as _FilterChanged;

  @override
  $Res call({
    Object? user = freezed,
    Object? fetchingCompleted = freezed,
  }) {
    return _then(_FilterChanged(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fetchingCompleted: fetchingCompleted == freezed
          ? _value.fetchingCompleted
          : fetchingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FilterChanged implements _FilterChanged {
  const _$_FilterChanged({this.user, this.fetchingCompleted});

  @override
  final User? user;
  @override
  final bool? fetchingCompleted;

  @override
  String toString() {
    return 'SessionState.filterChanged(user: $user, fetchingCompleted: $fetchingCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterChanged &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.fetchingCompleted, fetchingCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingCompleted, fetchingCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(fetchingCompleted);

  @JsonKey(ignore: true)
  @override
  _$FilterChangedCopyWith<_FilterChanged> get copyWith =>
      __$FilterChangedCopyWithImpl<_FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, bool? fetchingCompleted) state,
    required TResult Function(User? user, bool? fetchingCompleted)
        filterChanged,
    required TResult Function(User? user, bool? fetchingCompleted) loggedOut,
    required TResult Function(User? user, bool? fetchingCompleted) loggedIn,
  }) {
    return filterChanged(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
  }) {
    return filterChanged?.call(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(user, fetchingCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterChanged implements SessionState {
  const factory _FilterChanged({User? user, bool? fetchingCompleted}) =
      _$_FilterChanged;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool? get fetchingCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterChangedCopyWith<_FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoggedOutCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$LoggedOutCopyWith(
          _LoggedOut value, $Res Function(_LoggedOut) then) =
      __$LoggedOutCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool? fetchingCompleted});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$LoggedOutCopyWithImpl<$Res> extends _$SessionStateCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(_LoggedOut _value, $Res Function(_LoggedOut) _then)
      : super(_value, (v) => _then(v as _LoggedOut));

  @override
  _LoggedOut get _value => super._value as _LoggedOut;

  @override
  $Res call({
    Object? user = freezed,
    Object? fetchingCompleted = freezed,
  }) {
    return _then(_LoggedOut(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fetchingCompleted: fetchingCompleted == freezed
          ? _value.fetchingCompleted
          : fetchingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut({this.user, this.fetchingCompleted});

  @override
  final User? user;
  @override
  final bool? fetchingCompleted;

  @override
  String toString() {
    return 'SessionState.loggedOut(user: $user, fetchingCompleted: $fetchingCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedOut &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.fetchingCompleted, fetchingCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingCompleted, fetchingCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(fetchingCompleted);

  @JsonKey(ignore: true)
  @override
  _$LoggedOutCopyWith<_LoggedOut> get copyWith =>
      __$LoggedOutCopyWithImpl<_LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, bool? fetchingCompleted) state,
    required TResult Function(User? user, bool? fetchingCompleted)
        filterChanged,
    required TResult Function(User? user, bool? fetchingCompleted) loggedOut,
    required TResult Function(User? user, bool? fetchingCompleted) loggedIn,
  }) {
    return loggedOut(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
  }) {
    return loggedOut?.call(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(user, fetchingCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements SessionState {
  const factory _LoggedOut({User? user, bool? fetchingCompleted}) =
      _$_LoggedOut;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool? get fetchingCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoggedOutCopyWith<_LoggedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoggedInCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) then) =
      __$LoggedInCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool? fetchingCompleted});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$LoggedInCopyWithImpl<$Res> extends _$SessionStateCopyWithImpl<$Res>
    implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(_LoggedIn _value, $Res Function(_LoggedIn) _then)
      : super(_value, (v) => _then(v as _LoggedIn));

  @override
  _LoggedIn get _value => super._value as _LoggedIn;

  @override
  $Res call({
    Object? user = freezed,
    Object? fetchingCompleted = freezed,
  }) {
    return _then(_LoggedIn(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fetchingCompleted: fetchingCompleted == freezed
          ? _value.fetchingCompleted
          : fetchingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn({this.user, this.fetchingCompleted});

  @override
  final User? user;
  @override
  final bool? fetchingCompleted;

  @override
  String toString() {
    return 'SessionState.loggedIn(user: $user, fetchingCompleted: $fetchingCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.fetchingCompleted, fetchingCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingCompleted, fetchingCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(fetchingCompleted);

  @JsonKey(ignore: true)
  @override
  _$LoggedInCopyWith<_LoggedIn> get copyWith =>
      __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, bool? fetchingCompleted) state,
    required TResult Function(User? user, bool? fetchingCompleted)
        filterChanged,
    required TResult Function(User? user, bool? fetchingCompleted) loggedOut,
    required TResult Function(User? user, bool? fetchingCompleted) loggedIn,
  }) {
    return loggedIn(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
  }) {
    return loggedIn?.call(user, fetchingCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, bool? fetchingCompleted)? state,
    TResult Function(User? user, bool? fetchingCompleted)? filterChanged,
    TResult Function(User? user, bool? fetchingCompleted)? loggedOut,
    TResult Function(User? user, bool? fetchingCompleted)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user, fetchingCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements SessionState {
  const factory _LoggedIn({User? user, bool? fetchingCompleted}) = _$_LoggedIn;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool? get fetchingCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoggedInCopyWith<_LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
