import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/grid_view_widget.dart';

class NotFound extends StatefulWidget {
  const NotFound({super.key});

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  List<String> images = [
    AppImages.mango,
    AppImages.grape,
    AppImages.strawberry,
    AppImages.avocado,
    AppImages.lemon,
    AppImages.meat,
  ];

  @override
  Widget build(BuildContext context) {
    int count=2;
    bool isTap=true;
    String menuIcon=AppImages.menu;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.sp),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.r),
                      border: Border.all(width: 1, color: AppColors.C_777777.withOpacity(0.8)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(13.sp),
                      child: SvgPicture.asset(AppImages.arrowBack),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "Search Groceries",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Montserrat-Bold.ttf",
                    fontWeight: FontWeight.w400,
                    color: AppColors.C_4B4B4B,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppImages.basket),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                Container(
                  width: 247.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: AppColors.C_F0F3F2,
                  ),
                  child: TextField(
                    cursorWidth: 1.w,
                    cursorHeight: 22.h,
                    cursorColor: AppColors.black.withOpacity(0.2),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 15.h),
                      border: InputBorder.none,
                      hintText: "Rotten Fruit",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(16.sp),
                        child: SvgPicture.asset(AppImages.search),
                      ),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: AppColors.C_4B4B4B,
                          fontFamily: "Poppins"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide:
                        BorderSide(width: 1.r, color: AppColors.white),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide:
                        BorderSide(width: 1.w, color: AppColors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide: BorderSide(
                            width: 1.w, color: AppColors.C_194B38),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide:
                        BorderSide(width: 1.w, color: AppColors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: AppColors.C_F0F3F2,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(0.sp),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset(AppImages.setting)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 98.h),
            Container(
              width: 70.w,
              height: 67.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: AppColors.C_194B38.withOpacity(0.04),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Image.asset(AppImages.emoji),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "Item not Found",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Montserrat-Bold.ttf",
                fontWeight: FontWeight.w800,
                color: AppColors.C_4B4B4B,
              ),
            ),
            Text(
              "Try search with a different keyword",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: "Montserrat-Bold.ttf",
                fontWeight: FontWeight.w500,
                color: AppColors.C_9C9C9C,
              ),
            ),
            SizedBox(height: 98.h),
            Row(
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Montserrat-Bold.ttf",
                    fontWeight: FontWeight.w800,
                    color: AppColors.C_4B4B4B,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isTap==true?count=1:count=2;
                      });
                    }, icon: SvgPicture.asset(AppImages.menu))
              ],
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: count,
                      childAspectRatio: 149 / 245,
                      crossAxisSpacing: 17.sp,
                      mainAxisSpacing: 17.sp,),
                  children: const [
                    FruitGridView(
                        img: AppImages.mango,
                        text: "Mango",
                        richText: "\$ 1.",
                        richTitle: "8",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.grape,
                        text: "Grape",
                        richText: "\$ 2.",
                        richTitle: "1",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.strawberry,
                        text: "Strawberry",
                        richText: "\$ 2.",
                        richTitle: "5",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.avocado,
                        text: "Avocado",
                        richText: "\$ 1.",
                        richTitle: "9",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.lemon,
                        text: "Lemon",
                        richText: "\$ 2.",
                        richTitle: "9",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.meat,
                        text: "Meat",
                        richText: "\$ 3.",
                        richTitle: "5",
                        richSubtitle: "/kg",
                        heart: AppImages.dislike),
                    FruitGridView(
                        img: AppImages.bread,
                        text: "Bread",
                        richText: "\$ 1.",
                        richTitle: "4",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                    FruitGridView(
                        img: AppImages.avocado,
                        text: "Avocado",
                        richText: "\$ 1.",
                        richTitle: "9",
                        richSubtitle: "/kg",
                        heart: AppImages.whiteHeart),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
