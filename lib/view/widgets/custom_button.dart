import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titleButton, this.onPressed});
  final String titleButton;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kBackgroundButtonColor,
      ),
      onPressed: onPressed,
      child: Text(
        titleButton,
        style: Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
