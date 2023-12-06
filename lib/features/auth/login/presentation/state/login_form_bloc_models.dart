import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/option/option.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/login/domain/entities/credentials.dart';

part 'login_form_bloc_models.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required bool isSubmitting,
    required bool hidePassword,
    required bool showValidationError,
    required LoginCredentials credentials,
    required Option<Either<AuthFailure, LoginRequest>> failureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() {
    return LoginFormState(
        isSubmitting: false,
        hidePassword: true,
        showValidationError: false,
        credentials: LoginCredentials.empty(),
        failureOrSuccessOption: const Option.none());
  }
}

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged({
    required String email,
  }) = _EmailChanged;
  const factory LoginFormEvent.passwordChanged({
    required String password,
  }) = _PasswordChanged;

  const factory LoginFormEvent.submit() = _Submit;

  const factory LoginFormEvent.obscurePasswordChanged() =
      _ObscurePasswordChanged;
}
