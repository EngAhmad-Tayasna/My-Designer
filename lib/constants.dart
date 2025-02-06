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

  static BoxDecoration bottomSheetNavigatorDecoration = const BoxDecoration(
    border: Border(
      top: BorderSide(
        width: 4,
        color: Color(0xffC7A597),
      ),
    ),
  );
  static BoxDecoration appBarDecoration = const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 4,
        color: Color(0xffC7A597),
      ),
    ),
  );
}
