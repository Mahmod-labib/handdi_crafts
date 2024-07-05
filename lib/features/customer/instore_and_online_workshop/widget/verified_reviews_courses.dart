import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class VerifiedReviewsCourses extends StatefulWidget {
  const VerifiedReviewsCourses({super.key});

  @override
  State<VerifiedReviewsCourses> createState() => _VerifiedReviewsCoursesState();
}

class _VerifiedReviewsCoursesState extends State<VerifiedReviewsCourses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        color: ColorManager.white2,
        child: Column(
          children: [
            RatingBar.readOnly(
                size: 20,
                maxRating: 5,
                initialRating: 4.5,
                halfFilledColor: ColorManager.yellow,
                direction: Axis.horizontal,
                filledColor: ColorManager.yellow,
                filledIcon: Icons.star,
                emptyIcon: Icons.star),
            Column(
              children: [
                Text(
                    "I had such a great experience learning crochet from [Salma Mostafa]."
                    " She was patient, knowledgeable, and made the whole process so enjoyable."
                    " I highly recommend her to anyone looking to learn how to crochet!",
                    style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s12,
                        fontWeight: FontWeightManager.thin)),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Rectangle 1024.png",
                      width: 65.w,
                      height: 65.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      "assets/images/Rectangle 1023.png",
                      width: 65.w,
                      height: 65.h,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Heba Samir",
                        style: TextStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s9,
                            fontWeight: FontWeightManager.regular)),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text("20 Mars 2023",
                        style: TextStyle(
                            color: ColorManager.grey2,
                            fontSize: FontSize.s9,
                            fontWeight: FontWeightManager.regular)),
                  ],
                )
              ],
            ),
            Divider(
              color: ColorManager.grey2,
            ),
          ],
        ),
      ),
    );
  }
}
