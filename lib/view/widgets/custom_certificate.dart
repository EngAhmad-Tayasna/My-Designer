import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/utils/styles.dart';
import 'package:ahmad_tayasna/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCertificate extends StatelessWidget {
  const CustomCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'شهادتك ',
          textStyle: Styles.textStyle16,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'إرفاق الملف',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xffDADADA),
                ),
                foregroundColor: WidgetStatePropertyAll(
                  Color(0xff2F2535),
                ),
              ),
              child: const Text(
                "أختار ملف",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.kBorderColor,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  AppColors.kBackgroundButtonColor,
                ),
              ),
              child: const Text(
                'رفع',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'يسمح فقط بتحميل ملف الصورة هنا',
          style: TextStyle(
            fontSize: 11,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}