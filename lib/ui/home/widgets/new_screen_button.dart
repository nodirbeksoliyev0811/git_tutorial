import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewScreenButton extends StatelessWidget {
  NewScreenButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.color,
    this.withBorder = false,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onTap;
  bool withBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            width: 1,
            color: withBorder ? color : Colors.transparent,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}