part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState(Ds<void> dataState) = _RegisterState;

  factory RegisterState.empty() {
    return const RegisterState(Ds());
  }
}

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent(RegisterRequest request) = _RegisterEvent;
}
