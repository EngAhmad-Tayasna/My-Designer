import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/screens/login.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSignUpCheckAccount extends StatelessWidget {
  const CustomSignUpCheckAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Align(
        child: Row(
          children: [
            const CustomText(
              text: 'لديك حساب ؟ ',
              textStyle: Styles.textStyle18,
            ),
            GestureDetector(
              onTap: () {
                Get.off(() => const Login());
              },
              child: CustomText(
                text: 'تسجيل الدخول',
                textStyle: Styles.textStyle18.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
