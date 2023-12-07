import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_form_bloc.dart';

class RegisterSubmitButton extends StatelessWidget {
  const RegisterSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            context
                .read<RegisterFormBloc>()
                .add(const RegisterFormEvent.submit());
          },
          child: state.dataState.maybeMap(
              (value) => Text(
                    'Register'.toUpperCase(),
                  ),
              loading: (_) => const CircularProgressIndicator(),
              orElse: () => Text(
                    'Register'.toUpperCase(),
                  )),
        );
      },
    );
  }
}
