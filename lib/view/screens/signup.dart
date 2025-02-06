import 'package:ahmad_tayasna/view/widgets/signup/sing_up_body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key, required this.isTailor});
  final bool isTailor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
        child: SingUpBody(
          isTailor: isTailor,
        ),
      ),
    );
  }
}
