import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class FruitContainer extends StatefulWidget {

  const FruitContainer({super.key, required this.img, required this.text, required this.richText, required this.richTitle, required this.richSubtitle, required this.heart});

  final String img;
  final String text;
  final String richText;
  final String richTitle;
  final String richSubtitle;
  final String heart;


  @override
  State<FruitContainer> createState() => _FruitContainerState();
}

class _FruitContainerState extends State<FruitContainer> {

  bool isHeart=false;
  bool isOne=false;
  int count=2;
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.r),
          color: AppColors.C_F1F4F3,
        ),
        child: Row(
          children: [
            Image.asset(widget.img),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h,),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      fontFamily: "Raleway",
                      color: AppColors.C_194B38),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                    text: TextSpan(
                        text: widget.richText,
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            color: AppColors.C_4CBB5E),
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.richTitle,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                fontFamily: "Montserrat",
                                color: AppColors.C_4CBB5E),
                          ),
                          TextSpan(text: widget.richSubtitle,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily:"Raleway",color: AppColors.C_9C9C9C))
                        ]
                    )
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                SizedBox(height: 20.h,),
                Ink(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isSelected=!isSelected;
                      });
                    },
                    child: Container(
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.C_F1F4F3,
                        border: Border.all(color: AppColors.C_EC534A.withOpacity(0.2),width: 1.w),
                      ),
                      child: Center(
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected?AppColors.C_EC534A:AppColors.white
                          ),
                          child:
                          Padding(
                            padding: EdgeInsets.all(5.0.sp),
                            child: isSelected?SvgPicture.asset(widget.heart):SvgPicture.asset(AppImages.redHeart),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 34.h,),
                ZoomTapAnimation(
                  onTap: (){},
                  child: Container(
                    height: 41.h,
                    width: 61.7.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r),bottomRight: Radius.circular(23.r)),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppColors.C_32CB4B,
                          AppColors.C_26AD71,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.10),
                      child: SvgPicture.asset(AppImages.plus),
                    ),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
