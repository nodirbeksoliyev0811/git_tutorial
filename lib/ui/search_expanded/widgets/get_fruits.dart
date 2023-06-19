import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class GetFruits extends StatelessWidget {
  const GetFruits({super.key, required this.fruitImage});
  final String fruitImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.5),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.C_F1F4F3
        ),
        child: Image.asset(fruitImage),
      ),
    );
  }
}
