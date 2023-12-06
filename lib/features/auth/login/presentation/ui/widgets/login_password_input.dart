import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc_models.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.credentials.password.value.getOrElse(() => '');
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: TextFormField(
            controller: controller,
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            obscureText: state.hidePassword,
            onChanged: (password) {
              context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.passwordChanged(password: password));
            },
            validator: (_) => context
                .read<LoginFormBloc>()
                .state
                .credentials
                .password
                .value
                .fold(
                  (l) => l.map(
                    empty: (_) => 'Required field',
                    invalid: (_) => 'Invalid password',
                  ),
                  (r) => null,
                ),
            decoration: const InputDecoration(
              label: Text('Password'),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.deepPurple,
              ),
              enabledBorder: OutlineInputBorder(),
              errorBorder: OutlineInputBorder(),
            ),
          ),
        );
      },
    );
  }
}
