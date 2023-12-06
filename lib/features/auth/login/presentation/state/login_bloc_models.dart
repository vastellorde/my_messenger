import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/utils/data_state/data_state.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';

part 'login_bloc_models.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent(LoginRequest request) = _LoginEvent;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState(Ds dataState) = _LoginState;
}
