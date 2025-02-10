import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:ahmad_tayasna/view/screens/choose_fabric_type.dart';
import 'package:ahmad_tayasna/view/screens/dress_design_down.dart';
import 'package:ahmad_tayasna/view/widgets/choose_dress_color/view_color_selected.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
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
          Center(
            child: Container(
              width: 350,
              height: 380,
              color: const Color(0xffF1D8CB),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColorPicker(
                  pickerColor: selectedColor,
                  pickerAreaBorderRadius: const BorderRadius.all(
                    Radius.circular(200),
                  ),
                  onColorChanged: (color) {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  showLabel: false,
                  pickerAreaHeightPercent: .8,
                ),
              ),
            ),
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
            child: ViewColorSelected(selectedColor: selectedColor),
          ),
          const SizedBox(
            height: 60,
          ),
          ButtonDressRoute(
            onPressedNext: () {
              Get.off(() => ChooseFabricType(
                    selectedColor: selectedColor,
                  ));
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
