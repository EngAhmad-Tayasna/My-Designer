import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/screens/signup.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomTextCheckAccount extends StatelessWidget {
  const CustomTextCheckAccount({super.key, required this.isTailor});
  final bool isTailor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomText(
          text: "ليس لديك حساب ؟ ",
          textStyle: Styles.textStyle18,
        ),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () {
            Get.off(
              () => SignUp(
                isTailor: isTailor,
              ),
            );
          },
          child: CustomText(
            text: "إنشاء حساب جديد",
            textStyle: Styles.textStyle18.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
