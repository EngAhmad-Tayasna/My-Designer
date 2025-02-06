import 'package:ahmad_tayasna/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckRemember extends StatefulWidget {
  CustomCheckRemember({super.key, required this.isRemember});
  bool isRemember;

  @override
  State<CustomCheckRemember> createState() => _CustomCheckRememberState();
}

class _CustomCheckRememberState extends State<CustomCheckRemember> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, top: 10),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              activeColor: Colors.transparent,
              checkColor: Colors.white,
              value: widget.isRemember,
              onChanged: (bool? value) {
                setState(() {
                  widget.isRemember = value ?? false;
                });
              },
            ),
          ),
          const Text(
            'تذكرني',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.kTextPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
