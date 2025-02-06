import 'package:ahmad_tayasna/view/widgets/login/login_body.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
        child: LoginBody(),
      ),
    );
  }
}
