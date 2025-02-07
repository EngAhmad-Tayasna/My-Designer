import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/view/screens/choose_dress_color.dart';
import 'package:ahmad_tayasna/view/screens/dress_design_up.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/view_dress_design.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DressDesignDown extends StatelessWidget {
  const DressDesignDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainTitlePage(title: 'تصاميم الجزء السفلي'),
          ViewDressDesign(pathDress: Constants.pathDress),
          const SizedBox(
            height: 10,
          ),
          ButtonDressRoute(
            onPressedNext: () => Get.off(
              () => const ChooseDressColor(),
            ),
            onPressedLast: () => Get.off(
              () => const DressDesignUp(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
