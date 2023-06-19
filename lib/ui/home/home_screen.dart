import 'package:default_project/ui/home/widgets/new_screen_button.dart';
import 'package:default_project/ui/jamshid_search_result/gridview_screen.dart';
import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../mr_nodir/item_not_found.dart';
import '../muhammad/filter_screen.dart';
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
          NewScreenButton(title: "dilshodbek0720", onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const SearchExpandedScreen();
            }));
          }, color: AppColors.C_194B38),
          NewScreenButton(title: "mr_nodir", onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NotFound();
                    },
                  ),
                );
          }, color: AppColors.C_194B38),
          NewScreenButton(title: "jamshid", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const GridViewScreen();
                },
              ),
            );
          }, color: AppColors.C_194B38),
          NewScreenButton(title: "muhammad", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const FilterScreen();
                },
              ),
            );
          }, color: AppColors.C_194B38),
          NewScreenButton(title: "akromjon", onTap: (){

          }, color: AppColors.C_194B38),
          SizedBox(height: 40.h,)
        ],
      ),
    );
  }
}

