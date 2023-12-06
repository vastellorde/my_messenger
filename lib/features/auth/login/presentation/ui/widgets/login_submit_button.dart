import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc_models.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            context.read<LoginFormBloc>().add(
                  const LoginFormEvent.submit(),
                );
          },
          child: state.isSubmitting
              ? const CircularProgressIndicator()
              : Text(
                  'Login'.toUpperCase(),
                ),
        );
      },
    );
  }
}
