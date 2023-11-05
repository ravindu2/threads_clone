import 'package:autho_app/screens/authentication/login.dart';
import 'package:flutter/material.dart';

class Authenticated extends StatefulWidget {
  const Authenticated({super.key});

  @override
  State<Authenticated> createState() => _AuthenticatedState();
}

class _AuthenticatedState extends State<Authenticated> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Sign_In(),
    );
  }
}
