import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.title, required this.index, required this.onTap});

  final String title;
  final int index;
  final VoidCallback onTap;

  bool isSelect=false;

  int i=0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Container(
        height: height * (28 / 812),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: i==index?AppColors.darkGreen:Colors.grey,width: 1),
              ),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
