import 'package:default_project/ui/home/home_screen.dart';
import 'package:default_project/ui/search_expanded/widgets/get_button.dart';
import 'package:default_project/ui/search_expanded/widgets/get_fruits.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchExpandedScreen extends StatefulWidget {
  const SearchExpandedScreen({super.key});

  @override
  State<SearchExpandedScreen> createState() => _SearchExpandedScreenState();
}

class _SearchExpandedScreenState extends State<SearchExpandedScreen> {
  List <String> fruitsExpanded = [AppImages.mango, AppImages.avocado, AppImages.bread, AppImages.strawberry, AppImages.meat, AppImages.mango, AppImages.grape, ];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return const HomeScreen();
                }));
              },
              child: Container(
                width: 60.h,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: AppColors.C_777777.withOpacity(0.8), width: 1)     ,
                ),
                child: Center(
                  child: SizedBox(height: 18.w, width: 18.w, child: SvgPicture.asset(AppImages.arrowBack),),
                ),
              ),
            ),
          ),
          SizedBox(height: 11.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Container(
              width: double.infinity,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: TextField(
                controller: _controller,
                onChanged: (value){
                },
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "Search fresh groceries",
                  hintStyle: TextStyle(
                    fontFamily: "Raleway-Bold.ttf",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.C_194B38.withOpacity(0.4),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 17.w),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(15.r),
                    child: GestureDetector(
                      onTap: (){

                      },
                        child: SvgPicture.asset(AppImages.search)),
                  ),
                  filled: true,
                  fillColor: AppColors.C_194B38.withOpacity(0.06),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.r),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text("Last Seen", style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              color: AppColors.C_194B38
            ),),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.only(left: 25.5.w),
            child: SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(fruitsExpanded.length, (index) => GetFruits(fruitImage: fruitsExpanded[index])),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Title", style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                    color: AppColors.C_194B38
                ),),
                TextButton(
                  onPressed: (){ },
                  child: Text("remove", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.C_EC534A,
                  ),),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    // alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    children: [
                      GetButton(text: "Mango", onTap: (){}),
                      GetButton(text: "Avocado", onTap: (){}),
                      GetButton(text: "Sweet Fruit", onTap: (){}),
                      GetButton(text: "Grape", onTap: (){}),
                      GetButton(text: "Bread", onTap: (){}),
                      GetButton(text: "Pineapple", onTap: (){}),
                      GetButton(text: "Raw Meat", onTap: (){}),
                    ],
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
