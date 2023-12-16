import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_form_bloc.dart';

class RegisterRepeatPasswordInput extends StatelessWidget {
  const RegisterRepeatPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.credentials.repeatPassword.value.getOrElse(() => '');
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: TextFormField(
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            controller: controller,
            onChanged: (password) {
              context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.repeatPasswordChanged(
                      repeatPassword: password));
            },
            obscureText: true,
            validator: (_) => context
                .read<RegisterFormBloc>()
                .state
                .credentials
                .repeatPassword
                .value
                .fold(
                  (l) => l.map(
                    empty: (_) => 'Required field',
                    invalid: (_) => 'Passwords missmatch',
                  ),
                  (r) => null,
                ),
            decoration: const InputDecoration(
              label: Text('Repeat password'),
              prefixIcon: Icon(
                Icons.lock,
              ),
            ),
          ),
        );
      },
    );
  }
}
