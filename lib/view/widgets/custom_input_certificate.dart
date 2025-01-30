import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomInputCertificate extends StatelessWidget {
  const CustomInputCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomText(
          text: 'هل أنت خياط ؟',
          textStyle: Styles.textStyle18,
        ),
        const SizedBox(
          width: 2,
        ),
        CustomText(
          text: 'تسجيل دخول',
          textStyle: Styles.textStyle18.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
