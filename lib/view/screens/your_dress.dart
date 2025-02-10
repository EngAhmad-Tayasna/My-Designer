import 'package:ahmad_tayasna/view/screens/choose_fabric_type.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class YourDress extends StatelessWidget {
  const YourDress({super.key, required this.colorDress});
  final Color colorDress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainTitlePage(title: 'فستانك'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              width: 400,
              height: 580,
              decoration: const BoxDecoration(
                color: Color(0xffE2D1C2),
              ),
              child: SvgPicture.asset(
                'assets/svg/dress-4.svg',
                color: colorDress,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ButtonDressRoute(
              onPressedNext: () {},
              onPressedLast: () {
                Get.off(
                  () => ChooseFabricType(
                    selectedColor: colorDress,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
