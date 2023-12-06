import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/core/utils/form/value_objects.dart';
import 'package:my_messenger/core/utils/option/option.dart';
import 'package:my_messenger/features/auth/login/data/models/login_model.dart';
import 'package:my_messenger/features/auth/login/domain/entities/auth_failure.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc_models.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onLoginFormEvent);
  }

  FutureOr<void> _onLoginFormEvent(
      LoginFormEvent event, Emitter<LoginFormState> emit) async {
    await event.when(
      emailChanged: (e) async {
        emit(state.copyWith(
          credentials:
              state.credentials.copyWith(emailAddress: EmailAddress(e)),
          failureOrSuccessOption: const Option.none(),
        ));
      },
      passwordChanged: (e) async {
        emit(state.copyWith(
          credentials: state.credentials.copyWith(password: Password(e)),
          failureOrSuccessOption: const Option.none(),
        ));
      },
      obscurePasswordChanged: () async {
        emit(state.copyWith(hidePassword: !state.hidePassword));
      },
      submit: () async {
        emit(
          state.copyWith(
              isSubmitting: true, failureOrSuccessOption: const Option.none()),
        );

        if (state.credentials.failureOption.isNone) {
          emit(
            state.copyWith(
              isSubmitting: false,
              failureOrSuccessOption: Option.some(
                Either.right(LoginRequest(
                    email: state.credentials.emailAddress.value
                        .getOrElse(() => ''),
                    password:
                        state.credentials.password.value.getOrElse(() => ''))),
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
    );
  }
}
