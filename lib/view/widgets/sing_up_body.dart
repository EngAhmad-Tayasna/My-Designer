import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/view/widgets/custom_button.dart';
import 'package:ahmad_tayasna/view/widgets/custom_certificate.dart';
import 'package:ahmad_tayasna/view/widgets/custom_signup_check_account.dart';
import 'package:ahmad_tayasna/view/widgets/custom_input_login.dart';
import 'package:flutter/material.dart';

class SingUpBody extends StatelessWidget {
  const SingUpBody({super.key, required this.isTailor});
  final bool isTailor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: Constants.appDecoration,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/png/logo_sign_up.png',
              ),
              const CustomInput(
                textAlign: TextAlign.right,
                hintText: 'إسمك',
                titleTextField: 'الاسم',
                textInputType: TextInputType.text,
              ),
              const CustomInput(
                hintText: 'name@exapmle.com',
                titleTextField: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
              ),
              const CustomInput(
                hintText: 'على الأقل 8 أحرف ',
                titleTextField: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                textAlign: TextAlign.right,
              ),
              const CustomInput(
                hintText: '9630000000000',
                titleTextField: 'رقم الهاتف',
                textInputType: TextInputType.phone,
                textAlign: TextAlign.left,
              ),
              const CustomInput(
                hintText: "-----",
                titleTextField: "الجنس",
                textInputType: TextInputType.text,
                textAlign: TextAlign.right,
              ),
              const CustomInput(
                hintText: "DD/MM/YYYY",
                titleTextField: "تاريخ الميلاد",
                textInputType: TextInputType.datetime,
                textAlign: TextAlign.left,
              ),
              const CustomInput(
                hintText: "",
                titleTextField: "الموقع",
                textInputType: TextInputType.text,
                textAlign: TextAlign.right,
              ),
              isTailor ? const CustomCertificate() : const SizedBox(),
              const SizedBox(
                height: 40,
              ),
              const CustomButton(
                titleButton: "إنشاء حساب جديد",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomSignUpCheckAccount(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
