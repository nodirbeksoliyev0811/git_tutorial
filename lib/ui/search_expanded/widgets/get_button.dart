import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(23),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            border: Border.all(width: 1, color: AppColors.C_E2E2E2)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(text, style: const TextStyle(
                fontFamily: "Montserrat-Bold.ttf",
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.C_777777
            ),),
          ),
        ),
      ),
    );
  }
}
