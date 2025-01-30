import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.textStyle});
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
