import 'package:flutter/material.dart';

class LoginUp extends StatefulWidget {
  const LoginUp({super.key});

  @override
  State<LoginUp> createState() => _SingUpState();
}

class _SingUpState extends State<LoginUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Login is successfully'),
      ),
    );

  }
}
