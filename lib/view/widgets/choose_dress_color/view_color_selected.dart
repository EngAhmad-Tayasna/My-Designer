// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ahmad_tayasna/utils/app_colors.dart';

class ViewColorSelected extends StatelessWidget {
  final Color selectedColor;
  const ViewColorSelected({
    super.key,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text(
              'لقد أخترت اللون ',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kTextPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '#${selectedColor.value.toRadixString(16).substring(2).toUpperCase()}',
              style: const TextStyle(
                color: AppColors.kBackgroundButtonColor,
                fontSize: 16,
              ),
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: selectedColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ],
    );
  }
}
