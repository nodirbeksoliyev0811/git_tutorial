import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class FruitGridView extends StatefulWidget {

  const FruitGridView({super.key, required this.img, required this.text, required this.richText, required this.richTitle, required this.richSubtitle, required this.heart});

  final String img;
  final String text;
  final String richText;
  final String richTitle;
  final String richSubtitle;
  final String heart;


  @override
  State<FruitGridView> createState() => _FruitGridViewState();
}

class _FruitGridViewState extends State<FruitGridView> {

  bool isHeart=false;
  bool isOne=false;
  int count=2;
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245.h,
      width: 149.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        color: AppColors.C_F1F4F3
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(child: Image.asset(widget.img)),
              Positioned(
                top: 17.h, left: 110.w,
                child: Ink(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isSelected=!isSelected;
                      });
                    },
                    child: Container(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.C_F1F4F3,
                        border: Border.all(color: AppColors.C_EC534A.withOpacity(0.2),width: 1.w),
                      ),
                      child: Center(
                        child: Container(
                          height: 20.h,
                          width: 20.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected?AppColors.C_EC534A:AppColors.white
                          ),
                          child:
                          Padding(
                            padding: EdgeInsets.all(5.0.h),
                            child: isSelected?SvgPicture.asset(widget.heart):SvgPicture.asset(AppImages.redHeart),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 17.w,),
            child: Text(widget.text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,fontFamily: "Raleway-Bold.ttf",color: AppColors.C_194B38),),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17.w,),
                child: Column(
                  children: [
                    SizedBox(height: 8.h,),
                    RichText(
                        text: TextSpan(
                            text: widget.richText,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat-Bold.ttf",
                                color: AppColors.C_4CBB5E),
                            children: <TextSpan>[
                              TextSpan(
                                text: widget.richTitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    fontFamily: "Montserrat-Bold.ttf",
                                    color: AppColors.C_4CBB5E),
                              ),
                              TextSpan(text: widget.richSubtitle,style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500,fontFamily:"Raleway-Bold.ttf",color: AppColors.C_9C9C9C))
                            ]
                        )
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ZoomTapAnimation(
                onTap: (){},
                child: Container(
                  height: 41.h,
                  width: 53.h,
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
                    padding: EdgeInsets.all(15.sp),
                    child: SvgPicture.asset(AppImages.plus),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

