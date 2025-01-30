import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomInputCertificate extends StatefulWidget {
  CustomInputCertificate({super.key, required this.isTailor});
  bool isTailor;

  @override
  State<CustomInputCertificate> createState() => _CustomInputCertificateState();
}

class _CustomInputCertificateState extends State<CustomInputCertificate> {
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
    ;
  }
}
