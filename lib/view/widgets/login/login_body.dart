import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/widgets/custom_button.dart';
import 'package:ahmad_tayasna/view/widgets/login/custom_check_remember.dart';
import 'package:ahmad_tayasna/view/widgets/login/custom_check_robot.dart';
import 'package:ahmad_tayasna/view/widgets/login/custom_input_certificate.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:ahmad_tayasna/view/widgets/custom_input.dart';
import 'package:ahmad_tayasna/view/widgets/signup/custom_textCheck_account.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isChecked = false;
  bool isRemember = false;
  bool isTailor = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: Constants.appDecoration,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(
                'assets/png/logo_login.png',
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/png/text_login.png',
              ),
              const CustomInput(
                textAlign: TextAlign.left,
                textInputType: TextInputType.text,
                hintText: 'name@exapmle.com',
                titleTextField: 'البريد الإلكتروني',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomInput(
                textInputType: TextInputType.visiblePassword,
                hintText: '',
                titleTextField: 'كلمة المرور',
                textAlign: TextAlign.left,
              ),
              CustomCheckRobot(
                isChecked: isChecked,
              ),
              CustomCheckRemember(
                isRemember: isRemember,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomButton(
                titleButton: 'تسجيل الدخول',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: 'نسيت كلمة المرور ؟ ',
                textStyle: Styles.textStyle18,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextCheckAccount(
                isTailor: isTailor,
              ),
              const SizedBox(
                height: 10,
              ),
              !isTailor
                  ? GestureDetector(
                      onTap: () {
                        isTailor = !isTailor;
                        setState(() {});
                      },
                      child: const CustomInputCertificate())
                  : const SizedBox(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
