import 'package:ahmad_tayasna/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonDressRoute extends StatelessWidget {
  const ButtonDressRoute(
      {super.key, required this.onPressedNext, required this.onPressedLast});
  final void Function()? onPressedNext;
  final void Function()? onPressedLast;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
          titleButton: 'التالي',
          onPressed: onPressedNext,
        ),
        CustomButton(
          titleButton: 'السابق',
          onPressed: onPressedLast,
        ),
      ],
    );
  }
}
