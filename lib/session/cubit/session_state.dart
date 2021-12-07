part of 'session_cubit.dart';

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState.state({
    User? user,
    bool? fetchingCompleted,
  }) = _State;

  const factory SessionState.filterChanged({
    User? user,
    bool? fetchingCompleted,
  }) = _FilterChanged;
  const factory SessionState.loggedOut({
    User? user,
    bool? fetchingCompleted,
  }) = _LoggedOut;

  const factory SessionState.loggedIn({
    User? user,
    bool? fetchingCompleted,
  }) = _LoggedIn;
}
