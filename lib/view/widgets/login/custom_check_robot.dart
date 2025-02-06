import 'package:ahmad_tayasna/constants.dart';
import 'package:flutter/material.dart';

class CustomCheckRobot extends StatefulWidget {
  bool isChecked;
  CustomCheckRobot({super.key, required this.isChecked});

  @override
  State<CustomCheckRobot> createState() => _CustomCheckRobotState();
}

class _CustomCheckRobotState extends State<CustomCheckRobot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Container(
        height: 50,
        decoration: Constants.appDecoration.copyWith(
          color: Colors.white,
        ),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            Checkbox(
              value: widget.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  widget.isChecked = value ?? false;
                });
              },
            ),
            const Text(
              'I\'m not a robot',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Image.asset(
              'assets/png/iconTextField.png',
            ),
          ],
        ),
      ),
    );
  }
}
