import 'package:ahmad_tayasna/view/widgets/dress_design/custom_dress.dart';
import 'package:flutter/material.dart';

class ViewDressDesign extends StatelessWidget {
  const ViewDressDesign({super.key, required this.pathDress});
  final Map<String, String> pathDress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15,
            childAspectRatio: 0.8,
          ),
          itemCount: pathDress.length,
          itemBuilder: (context, index) => CustomDress(
            path: pathDress.keys.toList()[index],
            shapeDress: pathDress.values.toList()[index],
          ),
        ),
      ),
    );
  }
}
