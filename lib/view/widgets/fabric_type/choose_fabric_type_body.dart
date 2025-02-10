import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/view/screens/choose_dress_color.dart';
import 'package:ahmad_tayasna/view/screens/your_dress.dart';
import 'package:ahmad_tayasna/view/widgets/dress_design/button_dress_route.dart';
import 'package:ahmad_tayasna/view/widgets/fabric_type/custom_choose_fabric_type.dart';
import 'package:ahmad_tayasna/view/widgets/main_title_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseFabricTypeBody extends StatelessWidget {
  const ChooseFabricTypeBody({super.key, required this.selectedColor});
  final Color selectedColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainTitlePage(title: "نوع القماش"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[0],
            fabricTypeLoc: "assets/png/fabric_type${1}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[1],
            fabricTypeLoc: "assets/png/fabric_type${2}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[2],
            fabricTypeLoc: "assets/png/fabric_type${3}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[3],
            fabricTypeLoc: "assets/png/fabric_type${4}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[4],
            fabricTypeLoc: "assets/png/fabric_type${5}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[5],
            fabricTypeLoc: "assets/png/fabric_type${6}.png"),
        CustomChooseFabricType(
            fabricType: Constants.fabrictpye[6],
            fabricTypeLoc: "assets/png/fabric_type${7}.png"),
        const SizedBox(
          height: 10,
        ),
        ButtonDressRoute(onPressedNext: () {
          Get.off(() =>  YourDress(colorDress: selectedColor,));
        }, onPressedLast: () {
          Get.off(() => const ChooseDressColor());
        }),
      ],
    );
  }
}
