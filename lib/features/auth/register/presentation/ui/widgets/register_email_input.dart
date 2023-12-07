import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_form_bloc.dart';

class RegisterEmailInput extends StatelessWidget {
  const RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
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
              context.read<RegisterFormBloc>().add(
                    RegisterFormEvent.emailChanged(email: email),
                  );
            },
            validator: (_) => context
                .read<RegisterFormBloc>()
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
                color: Colors.deepPurple,
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(),
              errorBorder: OutlineInputBorder(),
            ),
          ),
        );
      },
    );
  }
}
