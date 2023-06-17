import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class WhiteHeart extends StatefulWidget {

  const WhiteHeart({super.key, required this.img, required this.text, required this.richText, required this.richTitle, required this.richSubtitle, required this.whiteHeart});

  final String img;
  final String text;
  final String richText;
  final String richTitle;
  final String richSubtitle;
  // final String redHeart;
  final String whiteHeart;


  @override
  State<WhiteHeart> createState() => _WhiteHeartState();
}

class _WhiteHeartState extends State<WhiteHeart> {



  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: AppColors.C_F1F4F3,
        ),
        child: Row(
          children: [
            Image.asset(widget.img),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32,),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: AppColors.C_194B38),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(
                        text: widget.richText,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.C_4CBB5E),
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.richTitle,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: AppColors.C_4CBB5E),
                          ),
                          TextSpan(text: widget.richSubtitle,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.C_9C9C9C))
                        ]
                    )
                ),
              ],
            ),
            SizedBox(width: 69,),
            Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.C_F1F4F3,
                    border: Border.all(color: AppColors.C_EC534A,width: 1),
                  ),
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(widget.whiteHeart),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 34,),
                Container(
                  height: 41,
                  width: 61.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(23)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        AppColors.C_32CB4B,
                        AppColors.C_26AD71,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.10),
                    child: SvgPicture.asset(AppImages.plus),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
