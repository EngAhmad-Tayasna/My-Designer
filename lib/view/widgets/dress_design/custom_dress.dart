import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDress extends StatelessWidget {
  const CustomDress({super.key, required this.path, required this.shapeDress});
  final String path;
  final String shapeDress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(color: const Color(0xffF1D8CB), boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(-5, 5),
              blurRadius: 10,
            ),
          ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                path,
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text('مقترح لشكل الفستان',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.kThirdColor,
            )),
        Text(
          shapeDress,
          style: const TextStyle(
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
