import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/view/screens/choose_fabric_type.dart';
import 'package:ahmad_tayasna/view/screens/dress_design_down.dart';
import 'package:ahmad_tayasna/view/widgets/choose_dress_color/custom_pick_color.dart';
import 'package:ahmad_tayasna/view/widgets/choose_dress_color/view_color_selected.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChooseDressColorBody extends StatefulWidget {
  const ChooseDressColorBody({super.key});

  @override
  State<ChooseDressColorBody> createState() => _ChooseDressColorBodyState();
}

class _ChooseDressColorBodyState extends State<ChooseDressColorBody> {
  Color selectedColor = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainTitlePage(
            title: "لون الفستان",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomPickColor(
            selectedColor: selectedColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 250,
            padding: const EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xffFFF6ED),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: AppColors.kTextPrimaryColor, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ViewColorSelected(
              selectedColor: selectedColor,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ButtonDressRoute(
            onPressedNext: () {
              Get.off(() => const ChooseFabricType());
            },
            onPressedLast: () {
              Get.off(() => const DressDesignDown());
            },
          )
        ],
      ),
    );
  }
}
