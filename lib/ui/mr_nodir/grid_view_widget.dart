import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class FruitGridView extends StatefulWidget {
  const FruitGridView(
      {super.key,
      required this.img,
      required this.text,
      required this.richText,
      required this.richTitle,
      required this.richSubtitle,
      required this.heart});

  final String img;
  final String text;
  final String richText;
  final String richTitle;
  final String richSubtitle;
  final String heart;

  @override
  State<FruitGridView> createState() => _FruitGridViewState();
}

class _FruitGridViewState extends State<FruitGridView> {
  bool isHeart = false;
  bool isOne = false;
  int count = 2;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 149,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23), color: AppColors.cF1F4F3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(child: Image.asset(widget.img)),
              Positioned(
                top: 17,
                left: 107,
                child: Ink(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.cF1F4F3,
                        border: Border.all(
                            color: AppColors.cEC534A.withOpacity(0.2),
                            width: 1),
                      ),
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected
                                  ? AppColors.cEC534A
                                  : AppColors.white),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: isSelected
                                ? SvgPicture.asset(widget.heart)
                                : SvgPicture.asset(AppImages.redHeart),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          // SizedBox(height: 34,),
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Text(
              widget.text,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  fontFamily: "Raleway",
                  color: AppColors.c194B38),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 17,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    RichText(
                        text: TextSpan(
                            text: widget.richText,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat",
                                color: AppColors.c4CBB5E),
                            children: <TextSpan>[
                          TextSpan(
                            text: widget.richTitle,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                color: AppColors.c4CBB5E),
                          ),
                          TextSpan(
                              text: widget.richSubtitle,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Raleway",
                                  color: AppColors.c9C9C9C))
                        ])),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.all(1)),
                onPressed: () {},
                child: Container(
                  height: 41,
                  width: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(23)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        AppColors.c32CB4B,
                        AppColors.c26AD71,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        bottomRight: Radius.circular(22),
                      ))),
                      child: SvgPicture.asset(AppImages.plus),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
