import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String name;
  const ProfileAvatar({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Text(
          name.characters.first.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
