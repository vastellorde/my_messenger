import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc_models.dart';

class LoginEmailInput extends StatelessWidget {
  const LoginEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.credentials.emailAddress.value.getOrElse(() => '');
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: TextFormField(
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            controller: controller,
            onChanged: (email) {
              context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.emailChanged(email: email));
            },
            validator: (_) => context
                .read<LoginFormBloc>()
                .state
                .credentials
                .emailAddress
                .value
                .fold(
                  (l) => l.map(
                    empty: (_) => 'Required field',
                    invalid: (_) => 'Invalid email address',
                  ),
                  (r) => null,
                ),
            decoration: const InputDecoration(
              label: Text('Email'),
              prefixIcon: Icon(
                Icons.email,
              ),
            ),
          ),
        );
      },
    );
  }
}
