import 'package:flutter/material.dart';

class RegisterPasswordInput extends StatelessWidget {
  const RegisterPasswordInput({super.key});

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
          label: Text('Password'),
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
