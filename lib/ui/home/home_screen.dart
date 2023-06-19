import 'package:default_project/ui/home/widgets/new_screen_button.dart';
import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../search_expanded/search_expanded.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screens", style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.C_194B38
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30.h,),
          NewScreenButton(title: "Screen1", onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const SearchExpandedScreen();
            }));
          }, color: AppColors.C_194B38),
          NewScreenButton(title: "Screen2", onTap: (){

          }, color: AppColors.C_194B38),
          NewScreenButton(title: "Screen2", onTap: (){

          }, color: AppColors.C_194B38),
          NewScreenButton(title: "Screen2", onTap: (){

          }, color: AppColors.C_194B38),
          NewScreenButton(title: "Screen2", onTap: (){

          }, color: AppColors.C_194B38),
          SizedBox(height: 40.h,)
        ],
      ),
    );
  }
}

