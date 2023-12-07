part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required bool isSubmitting,
    required bool hidePassword,
    required bool showValidationError,
    required RegisterCredentials credentials,
    required Option<Either<AuthFailure, RegisterRequest>>
        failureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() {
    return RegisterFormState(
      isSubmitting: false,
      hidePassword: true,
      showValidationError: false,
      credentials: RegisterCredentials.empty(),
      failureOrSuccessOption: const Option.none(),
    );
  }
}

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged({
    required String email,
  }) = _EmailChanged;
  const factory RegisterFormEvent.usernameChanged({
    required String username,
  }) = _UsernameChanged;
  const factory RegisterFormEvent.passwordChanged({
    required String password,
  }) = _PasswordChanged;
  const factory RegisterFormEvent.repeatPasswordChanged({
    required String repeatPassword,
  }) = _RepeatPasswordChanged;

  const factory RegisterFormEvent.submit() = _Submit;

  const factory RegisterFormEvent.obscurePasswordChanged() =
      _ObscurePasswordChanged;
}
