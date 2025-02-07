import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/view/screens/dress_design_down.dart';
import 'package:ahmad_tayasna/view/screens/home_sreen.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/view_dress_design.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DressDesignUp extends StatelessWidget {
  const DressDesignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainTitlePage(
            title: 'تصاميم الجزء العلوي',
          ),
          ViewDressDesign(
            pathDress: Constants.pathDress,
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonDressRoute(
            onPressedNext: () => Get.off(
              () => const DressDesignDown(),
            ),
            onPressedLast: () => Get.off(
              () => const HomeScreen(),
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
