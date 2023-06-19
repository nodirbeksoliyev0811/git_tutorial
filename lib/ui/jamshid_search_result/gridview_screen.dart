import 'package:default_project/ui/jamshid_search_result/widgets/fruit_gridview.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  bool isColor = false;
  bool isOne = false;
  int count = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                  SizedBox(
                    height: height * (50 / 812),
                    width: width * (248 / 375),
                    child: Material(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.C_194B38.withOpacity(0.06),
                      child: TextField(
                        cursorColor: AppColors.black,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize: width * (16 / 375),
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(AppImages.search),
                          ),
                          hintText: 'Sweet Fruit',
                          hintStyle: TextStyle(
                            fontSize: width * (16 / 375),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Raleway",
                            color: Colors.black,
                          ),
                          fillColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                              width: 0,
                              color: AppColors.C_194B38.withOpacity(0.06),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                              width: 0,
                              color: AppColors.C_194B38.withOpacity(0.06),
                            ),
                          ),
                        ),
                      ),
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
              Expanded(child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 149/245,crossAxisSpacing: 17,mainAxisSpacing: 17),
                  children:
                  [
                    const FruitGridView(img: AppImages.mango, text: "Mango", richText: "\$ 1.", richTitle: "8", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.grape, text: "Grape", richText: "\$ 2.", richTitle: "1", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.strawberry, text: "Strawberry", richText: "\$ 2.", richTitle: "5", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.avocado, text: "Avocado", richText: "\$ 1.", richTitle: "9", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.orange, text: "Orange", richText: "\$ 1.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.redPepper, text: "Red Bell Pepper", richText: "\$ 2.", richTitle: "2", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.tomato, text: "Tomato", richText: "\$ 1.", richTitle: "3", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.mango, text: "Mango", richText: "\$ 1.", richTitle: "8", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.grape, text: "Grape", richText: "\$ 2.", richTitle: "1", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                    const FruitGridView(img: AppImages.strawberry, text: "Strawberry", richText: "\$ 2.", richTitle: "1", richSubtitle: "/kg", heart: AppImages.whiteHeart),
                  ]
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






