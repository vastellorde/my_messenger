import 'package:flutter/material.dart';

class RegisterRepeatPasswordInput extends StatelessWidget {
  const RegisterRepeatPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        onChanged: (password) {},
        obscureText: true,
        decoration: const InputDecoration(
          label: Text('Repeat password'),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.deepPurple,
          ),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
