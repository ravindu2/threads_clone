import 'package:autho_app/model/UserModel.dart';
import 'package:autho_app/screens/authentication/authenticate.dart';
import 'package:autho_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    if (user == null) {
      return Authenticated();
    } else {
      return Home();
    }
  }
}
