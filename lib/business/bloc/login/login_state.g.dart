// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final String error;

  factory _$LoginState([void Function(LoginStateBuilder) updates]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._({this.isSubmitting, this.isSuccess, this.error}) : super._() {
    if (isSubmitting == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isSubmitting');
    }
    if (isSuccess == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isSuccess');
    }
  }

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        isSubmitting == other.isSubmitting &&
        isSuccess == other.isSuccess &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isSubmitting.hashCode), isSuccess.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('isSubmitting', isSubmitting)
          ..add('isSuccess', isSuccess)
          ..add('error', error))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState _$v;

  bool _isSubmitting;
  bool get isSubmitting => _$this._isSubmitting;
  set isSubmitting(bool isSubmitting) => _$this._isSubmitting = isSubmitting;

  bool _isSuccess;
  bool get isSuccess => _$this._isSuccess;
  set isSuccess(bool isSuccess) => _$this._isSuccess = isSuccess;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  LoginStateBuilder() {
    LoginState._initializeBuilder(this);
  }

  LoginStateBuilder get _$this {
    if (_$v != null) {
      _isSubmitting = _$v.isSubmitting;
      _isSuccess = _$v.isSuccess;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    final _$result = _$v ??
        new _$LoginState._(
            isSubmitting: isSubmitting, isSuccess: isSuccess, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
