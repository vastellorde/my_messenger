import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AutoRouter.of(context).pushNamed('/auth/register');
      },
      child: Text(
        'Register'.toUpperCase(),
      ),
    );
  }
}
