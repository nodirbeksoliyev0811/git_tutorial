import 'package:default_project/ui/muhammad/widgets/text_field.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../jamshid_search_result/widgets/fruit_gridview.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int i=0;
  int second=1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Scaffold(
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
                SizedBox(height: 24.sp,),
                Row(
                  children: [
                    SizedBox(
                      height: height * (50 / 812),
                      width: width * (247 / 375),
                      child: Material(
                        borderRadius: BorderRadius.circular(18),
                        color: AppColors.C_194B38.withOpacity(0.06),
                        child: TextField(
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
                    SizedBox(width: width * (18 / 375)),
                    SizedBox(
                      child: Ink(
                        width: width * (50 / 375),
                        height: height * (50 / 812),
                        decoration: BoxDecoration(
                            color: AppColors.C_194B38.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(18)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () => showModalBottomSheet(
                              showDragHandle: true,
                              barrierColor:
                                  AppColors.C_194B38.withOpacity(0.5),
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context,
                                    setState) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: ListView(
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: width,
                                                  height: height / 2,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 30, right: 30, top: 20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Sort By',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.w700,
                                                              fontSize:
                                                              width * (15 / 375)),
                                                        ),
                                                        SizedBox(
                                                          height: height * (10 / 812),
                                                        ),
                                                        Wrap(
                                                          children: [
                                                            ...List.generate(
                                                                buttonText.length,
                                                                    (index) => Padding(
                                                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                                                  child: Ink(
                                                                    height: height * (28 / 812),
                                                                    decoration: BoxDecoration(
                                                                      color: i==index?AppColors.C_2AAF7F.withOpacity(0.1) : Colors.transparent,
                                                                      borderRadius: BorderRadius.circular(28),
                                                                      border: Border.all(
                                                                          color: i==index? AppColors.C_2AAF7F:Colors.grey,width: 1),
                                                                    ),
                                                                    child: InkWell(
                                                                      borderRadius: BorderRadius.circular(28),
                                                                      onTap: (){
                                                                        setState(() {
                                                                          i=index;
                                                                        });
                                                                      },
                                                                      child: Padding(
                                                                        padding: const EdgeInsets.only(left: 20,right: 20,top: 8),
                                                                        child: Text(
                                                                          buttonText[index],
                                                                          style: TextStyle(
                                                                              color: i==index? AppColors.C_2AAF7F:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                        SizedBox(
                                                            height:
                                                            height * (20 / 812)),
                                                        Text(
                                                          'Free Shipping',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.w700,
                                                              fontSize:
                                                              width * (15 / 375),
                                                              color: Colors.black87),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                                              child: Ink(
                                                                height: height * (28 / 812),
                                                                decoration: BoxDecoration(
                                                                  color:  second==1?AppColors.C_2AAF7F.withOpacity(0.1) : Colors.transparent,
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  border: Border.all(
                                                                      color: second==1?AppColors.C_2AAF7F:Colors.grey,width: 1),
                                                                ),
                                                                child: InkWell(
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  onTap: (){setState(() {
                                                                    second=1;
                                                                  });},
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8),
                                                                    child: Text(
                                                                      'Regular',
                                                                      style: TextStyle(
                                                                          color: second==1?AppColors.C_2AAF7F:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                                              child: Ink(
                                                                height: height * (28 / 812),
                                                                decoration: BoxDecoration(
                                                                  color:  second==2?AppColors.C_2AAF7F.withOpacity(0.1) : Colors.transparent,
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  border: Border.all(
                                                                      color: second==2?AppColors.C_2AAF7F:Colors.grey,width: 1),
                                                                ),
                                                                child: InkWell(
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  onTap: (){setState(() {
                                                                    second=2;
                                                                  });},
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8),
                                                                    child: Text(
                                                                      'Free Shipping',
                                                                      style: TextStyle(
                                                                          color: second==2?AppColors.C_2AAF7F:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          'Price',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.w700,
                                                              fontSize:
                                                              width * (15 / 375)),
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const MyTextField(
                                                                title: 'Lowest'),
                                                            SizedBox(
                                                                width: width *
                                                                    (20 / 375)),
                                                            const MyTextField(
                                                                title: 'Highest'),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                            height:
                                                            height * (50 / 812)),
                                                        SizedBox(
                                                          height: height * (50 / 812),
                                                          width: width,
                                                          child: InkWell(
                                                            onTap: () {},
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                25),
                                                            child: Ink(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      25),
                                                                  gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                        const Color(
                                                                            0xFF26AD71),
                                                                        const Color(0xFF26AD71)
                                                                            .withOpacity(
                                                                            0.9)
                                                                      ])),
                                                              child: const Center(
                                                                child: Text(
                                                                  'Apply',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: 14,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                                  }
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(AppImages.setting),
                                ),
                              ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 24.sp,),
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
                          setState(() {});
                        }, icon: SvgPicture.asset(AppImages.menu))
                  ],
                ),
                SizedBox(height: 15.h),
                Expanded(
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
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
        )
      ],
    );
  }
}

List<String> buttonText = [
  'Popular',
  'Newest',
  'Lowest Price',
  'Highest Price'
];
