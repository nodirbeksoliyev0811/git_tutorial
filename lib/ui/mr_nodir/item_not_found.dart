import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'grid_view_widget.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 1, right: 1)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 0.2, color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: SvgPicture.asset(AppImages.arrowBack),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Search Groceries",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    color: AppColors.c4B4B4B,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppImages.basket),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: 247,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.cF0F3F2,
                  ),
                  child: TextField(
                    cursorWidth: 1,
                    cursorHeight: 22,
                    cursorColor: AppColors.black.withOpacity(0.2),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 15),
                      border: InputBorder.none,
                      hintText: "Rotten Fruit",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SvgPicture.asset(AppImages.search),
                      ),
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColors.c4B4B4B,
                          fontFamily: "Poppins"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(width: 1, color: AppColors.white),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(width: 1, color: AppColors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.c194B38),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(width: 1, color: AppColors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.cF0F3F2,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset(AppImages.setting)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 98),
            Container(
              width: 70,
              height: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.c194B38.withOpacity(0.04),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(AppImages.emoji),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Item not Found",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w800,
                color: AppColors.c4B4B4B,
              ),
            ),
            const Text(
              "Try search with a different keyword",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                color: AppColors.c9C9C9C,
              ),
            ),
            const SizedBox(height: 98),
            Row(
              children: [
                const Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w800,
                    color: AppColors.c4B4B4B,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(AppImages.menu))
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 149 / 245,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 17),
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
