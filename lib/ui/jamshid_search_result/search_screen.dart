import 'package:default_project/ui/jamshid_search_result/widgets/avocado_container.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/grape_container.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/mango_container.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/orange_container.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/redPepper.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/strawberry_container.dart';
import 'package:default_project/ui/jamshid_search_result/widgets/tomato_container.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
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
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 0,
      ),
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 40,
                  width: 61,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: AppColors.C_777777.withOpacity(0.2)
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    child: SvgPicture.asset(AppImages.arrowBack),
                  ),
                ),
                title: const Center(
                    child: Text(
                  "Search Groceries",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      color: AppColors.C_4B4B4B),
                )),
                trailing: SvgPicture.asset(AppImages.basket),
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.C_194B38.withOpacity(0.06),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset(AppImages.search),
                        const SizedBox(
                          width: 11,
                        ),
                        const Text(
                          "Sweet Fruit",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              fontFamily: "Raleway",
                              color: AppColors.C_194B38),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 22.7,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.C_194B38.withOpacity(0.06),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppImages.setting),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Text(
                  "Found 20 Results",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway",
                      color: AppColors.C_194B38),
                ),
                trailing: SvgPicture.asset(AppImages.line),
              ),
              const SizedBox(
                height: 25,
              ),
              const Expanded(child: SingleChildScrollView(
                child:
                  Column(
                    children: [
                      MangoContainer(img: AppImages.mango, text: "Mango", richText: "\$ 1.", richTitle: "8", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      GrapeContainer(img: AppImages.grape, text: "Grape", richText: "\$ 2.", richTitle: "1", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      StrawberryContainer(img: AppImages.strawberry, text: "Strawberry", richText: "\$ 2.", richTitle: "5", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      AvocadoContainer(img: AppImages.avocado, text: "Avocado", richText: "\$ 1.", richTitle: "9", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      OrangeContainer(img: AppImages.orange, text: "Orange", richText: "\$ 1.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      TomatoContainer(img: AppImages.tomato, text: "Tomato", richText: "\$ 1.", richTitle: "3", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      RedPepperContainer(img: AppImages.redPepper, text: "Red Bell Pepper", richText: "\$ 2.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,),
                      AvocadoContainer(img: AppImages.avocado, text: "Avocado", richText: "\$ 1.", richTitle: "9", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                      SizedBox(height: 17,)
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

List<String> images = [
  AppImages.grape,
  AppImages.mango,
  AppImages.strawberry,
  AppImages.avocado,
  AppImages.grape,
  AppImages.mango,
  AppImages.strawberry,
];




