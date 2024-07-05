import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalaryDetailSection extends StatelessWidget {
  SalaryDetailSection({
    super.key,
    required this.text1,
    required this.text2,
    required this.weightDetail,
    required this.salaryBefore,
    required this.salaryAfter,
  });
  String text1 = '';
  String text2 = '';
  String weightDetail = '';
  String salaryBefore = '';
  String salaryAfter = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  text1,
                  style:  TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSize.s18,
                      color: ColorManager.black),
                ),
              ],
            ),
             SizedBox(
              height: 1.h,
            ),
            Text(
              text2,
              style:  TextStyle(
                  fontWeight: FontWeightManager.medium,
                  fontSize: FontSize.s18,
                  color: ColorManager.black),
            ),
             SizedBox(
              height: 5.h,
            ),
            Text(
              weightDetail,
              style:  TextStyle(
                  fontWeight: FontWeightManager.regular,
                  fontSize: FontSize.s14,
                  color: ColorManager.grey2),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                salaryBefore,
                style:  TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeightManager.thin,
                    fontSize: FontSize.s12,
                    color: ColorManager.grey4),
              ),
              Text(
                salaryAfter,
                style:  TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: FontSize.s16,
                    color: ColorManager.olive2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
