import 'package:default_project/ui/jamshid_search_result/widgets/fruit_container.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  bool isColor = false;
  bool isOne = false;
  int count = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 0.h,
      ),
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 40.h,
                  width: 61.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(color: AppColors.C_777777.withOpacity(0.2)
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.h),
                    child: SvgPicture.asset(AppImages.arrowBack),
                  ),
                ),
                title: Center(
                    child: Text(
                  "Search Groceries",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat-Bold.ttf",
                      color: AppColors.C_4B4B4B),
                )),
                trailing: SvgPicture.asset(AppImages.basket),
              ),
              SizedBox(
                height: 33.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50.h,
                    width: 248.w,
                    child: Material(
                      borderRadius: BorderRadius.circular(18.r),
                      color: AppColors.C_194B38.withOpacity(0.06),
                      child: TextField(
                        cursorColor: AppColors.black,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize:16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(10.0.sp),
                            child: SvgPicture.asset(AppImages.search),
                          ),
                          hintText: 'Sweet Fruit',
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Raleway-Bold.ttf",
                            color: Colors.black,
                          ),
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.r),
                            borderSide: BorderSide(
                              width: 0.w,
                              color: AppColors.C_194B38.withOpacity(0.06),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                              width: 0.w,
                              color: AppColors.C_194B38.withOpacity(0.06),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 22.7.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: AppColors.C_194B38.withOpacity(0.06),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppImages.setting),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Text(
                  "Found 20 Results",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway-Bold.ttf",
                      color: AppColors.C_194B38),
                ),
                trailing: Ink(child: InkWell(
                  onTap: (){},
                    child: SvgPicture.asset(AppImages.line))),
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(child: SingleChildScrollView(
                child:
                  Column(
                    children: [
                      const FruitContainer(img: AppImages.mango, text: "Mango", richText: "\$ 1.", richTitle: "8", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.grape, text: "Grape", richText: "\$ 2.", richTitle: "1", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.strawberry, text: "Strawberry", richText: "\$ 2.", richTitle: "5", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.avocado, text: "Avocado", richText: "\$ 1.", richTitle: "9", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.orange, text: "Orange", richText: "\$ 1.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.tomato, text: "Tomato", richText: "\$ 1.", richTitle: "3", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.redPepper, text: "Red Bell Pepper", richText: "\$ 2.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.avocado, text: "Avocado", richText: "\$ 1.", richTitle: "9", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17.h,),
                      const FruitContainer(img: AppImages.redPepper, text: "Red Bell Pepper", richText: "\$ 2.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart)
                    ],
                  )
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
