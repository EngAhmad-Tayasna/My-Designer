import 'package:flutter/material.dart';

class MainTitlePage extends StatelessWidget {
  const MainTitlePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 60, 38, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
