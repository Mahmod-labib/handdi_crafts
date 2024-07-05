import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';

import 'package:flutter_application_1/features/crafter/home/widget/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMadeByContainer extends StatelessWidget {
  const CustomMadeByContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w,bottom: 5.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Made By You",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSize.s16,
                      color: ColorManager.black),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w,  right: 21.w),
          child:Container(
            height: 281.h,
            width: 334.w,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  child: Image.asset(
                    "assets/images/Rectangle 1000.png",
                    width: 334.w,
                    height: 236.h,
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(left: 16.w,top: 12.h),
                  child: Align(alignment: Alignment.bottomLeft,
                    child: Text(
                      "Crochet Tiger for kids",
                      style: TextStyle(
                        fontSize: FontSize.s13,
                        color: ColorManager.black,
                        fontWeight: FontWeightManager.thin,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
        SizedBox(height: 12.h,),
        CustomButton(text: "View Collection", onPressed: () {

        },
            width: 119.w,
            height: 36.h,
            fontSize: 10,
            fontWeight: FontWeightManager.regular),

      ],
    );
  }
}
