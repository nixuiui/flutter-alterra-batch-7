import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {

  final String name;
  final Function(String)? onPressed;

  const WelcomeTextWidget({
    super.key,
    required this.name,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => onPressed?.call(name),
          child: Text(
            'Haloooo, $name',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.red
            ),
          ),
        ),
        const Text(
          'Selamat Datang di Alterra Academy Batch 7',
          style: TextStyle(
            fontSize: 24,
            color: Colors.green
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}