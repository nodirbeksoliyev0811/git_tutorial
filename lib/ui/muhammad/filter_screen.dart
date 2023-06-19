import 'package:default_project/ui/muhammad/widgets/text_field.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppImages.arrowBack),
            ),
            title: const Text('Search Groceries'),
            actions: [
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(AppImages.basket))
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * (30 / 375)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * (50 / 812),
                      width: width * (247 / 375),
                      child: Material(
                        borderRadius: BorderRadius.circular(18),
                        color: AppColors.darkGreen.withOpacity(0.06),
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
                                color: AppColors.darkGreen.withOpacity(0.06),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 0,
                                color: AppColors.darkGreen.withOpacity(0.06),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * (18 / 375)),
                    SizedBox(
                      child: Container(
                        width: width * (50 / 375),
                        height: height * (50 / 812),
                        decoration: BoxDecoration(
                            color: AppColors.darkGreen.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(18)),
                        child: IconButton(
                          onPressed: () => showModalBottomSheet(
                              showDragHandle: true,
                              barrierColor:
                                  AppColors.darkGreen.withOpacity(0.5),
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
                                                                      color: i==index?AppColors.mediumGreen.withOpacity(0.1) : Colors.transparent,
                                                                      borderRadius: BorderRadius.circular(28),
                                                                      border: Border.all(
                                                                          color: i==index? AppColors.mediumGreen:Colors.grey,width: 1),
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
                                                                              color: i==index? AppColors.mediumGreen:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
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
                                                                  color:  second==1?AppColors.mediumGreen.withOpacity(0.1) : Colors.transparent,
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  border: Border.all(
                                                                      color: second==1?AppColors.mediumGreen:Colors.grey,width: 1),
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
                                                                          color: second==1?AppColors.mediumGreen:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
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
                                                                  color:  second==2?AppColors.mediumGreen.withOpacity(0.1) : Colors.transparent,
                                                                  borderRadius: BorderRadius.circular(28),
                                                                  border: Border.all(
                                                                      color: second==2?AppColors.mediumGreen:Colors.grey,width: 1),
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
                                                                          color: second==2?AppColors.mediumGreen:Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
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
                                icon: SvgPicture.asset(AppImages.setting),
                              ),
                        ),
                      ),
                  ],
                ),
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
