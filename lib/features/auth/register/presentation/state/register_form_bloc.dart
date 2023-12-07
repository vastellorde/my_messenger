import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_objects.dart';
import 'package:my_messenger/core/utils/option/option.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/register/data/models/register_request.dart';
import 'package:my_messenger/features/auth/register/domain/entities/register_credentials.dart';

part 'register_form_bloc_models.dart';
part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc() : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>(_onRegisterEvent);
  }

  FutureOr<void> _onRegisterEvent(
    RegisterFormEvent event,
    Emitter<RegisterFormState> emit,
  ) {
    event.when(
      emailChanged: (email) {
        emit(
          state.copyWith(
            credentials: state.credentials.copyWith(
              emailAddress: EmailAddress(email),
            ),
            failureOrSuccessOption: const Option.none(),
          ),
        );
      },
      usernameChanged: (username) {
        emit(
          state.copyWith(
            credentials: state.credentials.copyWith(
              username: Username(username),
            ),
            failureOrSuccessOption: const Option.none(),
          ),
        );
      },
      passwordChanged: (password) {
        emit(
          state.copyWith(
            credentials: state.credentials.copyWith(
              password: Password(password),
            ),
            failureOrSuccessOption: const Option.none(),
          ),
        );
      },
      repeatPasswordChanged: (repeatPassword) {
        emit(
          state.copyWith(
            credentials: state.credentials.copyWith(
              repeatPassword: RepeatPassword(
                repeatPassword,
                state.credentials.password.value.getOrElse(() => ''),
              ),
            ),
            failureOrSuccessOption: const Option.none(),
          ),
        );
      },
      submit: () {
        emit(
          state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: const Option.none(),
          ),
        );

        if (state.credentials.failureOption.isNone) {
          emit(
            state.copyWith(
              isSubmitting: false,
              failureOrSuccessOption: Option.some(
                Either.right(
                  RegisterRequest(
                    email: state.credentials.emailAddress.value.getOrElse(
                      () => '',
                    ),
                    username: state.credentials.username.value.getOrElse(
                      () => '',
                    ),
                    password: state.credentials.password.value.getOrElse(
                      () => '',
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          emit(
            state.copyWith(
              isSubmitting: false,
              showValidationError: true,
              failureOrSuccessOption: const Option.some(
                Either.left(
                  AuthFailure.validationFailure(),
                ),
              ),
            ),
          );
        }
      },
      obscurePasswordChanged: () {
        emit(state.copyWith(hidePassword: !state.hidePassword));
      },
    );
  }
}
