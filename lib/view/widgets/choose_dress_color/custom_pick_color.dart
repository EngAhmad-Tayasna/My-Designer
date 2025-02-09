// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CustomPickColor extends StatefulWidget {
  Color selectedColor;
  CustomPickColor({
    super.key,
    required this.selectedColor,
  });

  @override
  State<CustomPickColor> createState() => _CustomPickColorState();
}

class _CustomPickColorState extends State<CustomPickColor> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 380,
        color: const Color(0xffF1D8CB),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ColorPicker(
            pickerColor: widget.selectedColor,
            pickerAreaBorderRadius: const BorderRadius.all(
              Radius.circular(200),
            ),
            onColorChanged: (color) {
              setState(() {
                widget.selectedColor = color;
              });
            },
            showLabel: false,
            pickerAreaHeightPercent: .8,
          ),
        ),
      ),
    );
  }
}
