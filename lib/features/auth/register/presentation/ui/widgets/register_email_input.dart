import 'package:flutter/material.dart';

class RegisterEmailInput extends StatelessWidget {
  const RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        onChanged: (email) {},
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
  }
}
