import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExploreContainer extends StatelessWidget {
  const CustomExploreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Padding(
          padding: EdgeInsets.only(left: 20.w,bottom: 12.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(fontWeight: FontWeightManager.medium, fontSize: FontSize.s16, color: ColorManager.black),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20.w, bottom: 20.h, right: 21.w),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 334.w,
              height: 229.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:  Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image(image: AssetImage("assets/images/Rectangle 998.png")),
                  Positioned(
                    top: 116.h,
                    bottom: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Trendy Winter",
                            style: TextStyle(
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                              color: ColorManager.white2,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "Collections!",
                            style: TextStyle(
                              fontSize: FontSize.s18,
                              fontWeight: FontWeightManager.medium,
                              color: ColorManager.white2,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "Shop Now",
                                style: TextStyle(
                                  fontSize: FontSize.s10,
                                  fontWeight: FontWeightManager.regular,
                                  color: ColorManager.white2,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: ColorManager.white2,
                                size: 15.r,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
