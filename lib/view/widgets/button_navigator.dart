import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          AppColors.kSecondaryColor,
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(300, 100),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}
