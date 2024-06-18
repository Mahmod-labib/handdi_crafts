import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custom_child_scroll_trending.dart';

class CustomTrendingCrafters extends StatelessWidget {
  const CustomTrendingCrafters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 6.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending  Crafters",
                  style: TextStyle(fontWeight: FontWeightManager.medium, fontSize: FontSize.s16, color: ColorManager.black),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20.w , top: 6.h , bottom: 26.h,right: 20.w),
          child: Align(
            alignment: Alignment.topLeft,
            child:  SizedBox(
              height: 202.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context , index){
                    return  Padding(
                      padding:  EdgeInsets.only(right: 20.w),
                      child:  CustomTrndingScroll(imgPath: 'assets/images/Rectangle1006.png', name: 'Tarek Ahmed',),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
