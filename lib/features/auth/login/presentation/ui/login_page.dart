import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_bloc_models.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc.dart';
import 'package:my_messenger/features/auth/login/presentation/state/login_form_bloc_models.dart';
import 'package:my_messenger/features/auth/login/presentation/ui/widgets/login_email_input.dart';
import 'package:my_messenger/features/auth/login/presentation/ui/widgets/login_password_input.dart';
import 'package:my_messenger/features/auth/login/presentation/ui/widgets/login_submit_button.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  final void Function() onSuccess;
  const LoginPage({required this.onSuccess, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormBloc>(
          create: (context) => GetIt.I.get(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => GetIt.I.get(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginFormBloc, LoginFormState>(
            listener: (context, state) {
              state.failureOrSuccessOption.fold(
                () => null,
                (either) => {
                  either.when(
                    left: (_) {},
                    right: (model) {
                      context.read<LoginBloc>().add(
                            LoginEvent(model),
                          );
                    },
                  ),
                },
              );
            },
          ),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.dataState.whenOrNull(() => null, error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      error.toString(),
                    ),
                  ),
                );
              }, success: (_) {
                onSuccess();
              });
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              LoginEmailInput(),
              LoginPasswordInput(),
              LoginSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
