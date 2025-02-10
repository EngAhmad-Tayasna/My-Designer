import 'package:ahmad_tayasna/view/widgets/fabric_type/choose_fabric_type_body.dart';
import 'package:flutter/material.dart';

class ChooseFabricType extends StatelessWidget {
  const ChooseFabricType({super.key, required this.selectedColor});
  final Color selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChooseFabricTypeBody(
        selectedColor: selectedColor,
      ),
    );
  }
}
