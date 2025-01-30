import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    required this.titleTextField,
    required this.textInputType, required this.textAlign,
  });
  final String hintText;
  final String titleTextField;
  final TextInputType textInputType;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: titleTextField,
          textStyle: Styles.textStyle16,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          textAlign: textAlign,
          textInputType: textInputType,
          hintText: hintText,
        ),
      ],
    );
  }
}
