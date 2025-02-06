import 'package:flutter/material.dart';

class BottomSheetNavigator extends StatelessWidget {
  const BottomSheetNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/png/contact_icon.png",
          ),
          Image.asset(
            "assets/png/home_nav_icon.png",
          ),
          Image.asset(
            "assets/png/profile_icon.png",
          ),
        ],
      ),
    );
  }
}
