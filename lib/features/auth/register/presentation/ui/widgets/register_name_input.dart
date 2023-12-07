import 'package:flutter/material.dart';

class RegisterNameInput extends StatelessWidget {
  const RegisterNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        onChanged: (username) {},
        decoration: const InputDecoration(
          label: Text('Username'),
          prefixIcon: Icon(
            Icons.people,
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
