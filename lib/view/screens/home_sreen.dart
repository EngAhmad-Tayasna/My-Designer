// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ahmad_tayasna/constants.dart';
import 'package:ahmad_tayasna/view/screens/dress_design_up.dart';
import 'package:ahmad_tayasna/view/widgets/bottom_sheet_navigator.dart';
import 'package:ahmad_tayasna/view/widgets/button_navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeScreenBody());
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/png/l.png",
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: Constants.appBarDecoration,
            )
          ],
        ),
        SizedBox(
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonNavigator(
                onPressed: () => Get.off(() => DressDesignUp()),
                text: 'تصميم الفستان',
              ),
              ButtonNavigator(
                onPressed: () {},
                text: 'طلباتي',
              ),
            ],
          ),
        ),
        Container(
          decoration: Constants.bottomSheetNavigatorDecoration,
          child: const BottomSheetNavigator(),
        ),
      ],
    );
  }
}
