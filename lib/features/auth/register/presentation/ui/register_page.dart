import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
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
    );
  }
}
