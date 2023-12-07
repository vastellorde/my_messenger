import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/router/router.gr.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/state/register_form_bloc.dart';
import 'package:my_messenger/features/auth/register/presentation/ui/widgets/register_email_input.dart';
import 'package:my_messenger/features/auth/register/presentation/ui/widgets/register_name_input.dart';
import 'package:my_messenger/features/auth/register/presentation/ui/widgets/register_password_input.dart';
import 'package:my_messenger/features/auth/register/presentation/ui/widgets/register_repeat_password_input.dart';
import 'package:my_messenger/features/auth/register/presentation/ui/widgets/register_submit_button.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterFormBloc>(
          create: (context) => GetIt.I.get(),
        ),
        BlocProvider<RegisterBloc>(
          create: (context) => GetIt.I.get(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<RegisterFormBloc, RegisterFormState>(
            listener: (context, state) {
              state.failureOrSuccessOption.fold(
                () => null,
                (either) => {
                  either.when(
                    left: (_) {},
                    right: (model) {
                      context.read<RegisterBloc>().add(
                            RegisterEvent(model),
                          );
                    },
                  ),
                },
              );
            },
          ),
          BlocListener<RegisterBloc, RegisterState>(listener: (context, state) {
            state.dataState.whenOrNull(() => null, error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error.toString(),
                  ),
                ),
              );
            }, success: (_) {
              AutoRouter.of(context).replaceAll([const HomeRoute()]);
            });
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Register'),
            leading: const AutoLeadingButton(),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              RegisterEmailInput(),
              RegisterNameInput(),
              RegisterPasswordInput(),
              RegisterRepeatPasswordInput(),
              RegisterSubmitButton()
            ],
          ),
        ),
      ),
    );
  }
}
