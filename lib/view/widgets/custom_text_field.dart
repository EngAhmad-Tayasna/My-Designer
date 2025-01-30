import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textInputType, required this.textAlign,
  });
  final String hintText;
  final TextInputType textInputType;
  final TextAlign  textAlign;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      textAlign: textAlign,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(.5),
          fontSize: 16,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
