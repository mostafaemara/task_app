import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/src/data/model/user.dart';
part "auth_state.freezed.dart";

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({required User user}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.initilizing() = _Initilizing;
}
