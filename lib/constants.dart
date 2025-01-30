import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:flutter/material.dart';

 
 abstract class Constants {
  static BoxDecoration appDecoration = BoxDecoration(
    color: AppColors.kSecondaryColor,
    border: Border.all(
      width: 3,
      style: BorderStyle.solid,
      color: AppColors.kBorderColor,
    ),
  );
 }