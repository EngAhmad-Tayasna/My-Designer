import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomChooseFabricType extends StatelessWidget {
  const CustomChooseFabricType(
      {super.key, required this.fabricType, required this.fabricTypeLoc});
  final String fabricType;
  final String fabricTypeLoc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 70,
        decoration: const BoxDecoration(
          color: Color(0xffF1D8CB),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              fabricType,
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.kBackgroundButtonColor,
              ),
            ),
            Image.asset(fabricTypeLoc)
          ],
        ),
      ),
    );
  }
}
