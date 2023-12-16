import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_form_bloc.dart';

class RegisterNameInput extends StatelessWidget {
  const RegisterNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.credentials.username.value.getOrElse(() => '');
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: TextFormField(
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            controller: controller,
            onChanged: (username) {
              context.read<RegisterFormBloc>().add(
                    RegisterFormEvent.usernameChanged(username: username),
                  );
            },
            validator: (_) => context
                .read<RegisterFormBloc>()
                .state
                .credentials
                .username
                .value
                .fold(
                  (l) => l.map(
                    empty: (_) => 'Required field',
                    invalid: (_) => 'Min length 5 symbols',
                  ),
                  (r) => null,
                ),
            decoration: const InputDecoration(
              label: Text('Username'),
              prefixIcon: Icon(
                Icons.people,
              ),
            ),
          ),
        );
      },
    );
  }
}
