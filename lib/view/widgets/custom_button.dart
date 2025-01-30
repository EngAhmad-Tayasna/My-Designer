import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titleButton});
  final String titleButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kBackgroundButtonColor,
      ),
      onPressed: () {},
      child: Text(
        titleButton,
        style: Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
