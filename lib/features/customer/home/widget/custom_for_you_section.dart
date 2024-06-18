import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custom_child_scroll_for-you.dart';
import '../../../../widgets/custom_child_scroll_trending.dart';

class CustomForYouSection extends StatelessWidget {
  const CustomForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
         Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 6.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For you",
                  style: TextStyle(fontWeight: FontWeightManager.medium, fontSize: FontSize.s16, color: ColorManager.black),
                ),
                Text(
                  "New from your favorite crafters",
                  style: TextStyle(fontWeight: FontWeightManager.thin, fontSize: FontSize.s10, color: ColorManager.grey2),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20.w , bottom: 20.h),
          child: SizedBox(
            height: 202.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context , index){
              return  Padding(
                padding:  EdgeInsets.only(right: 20.w),
                child: CustomChildScroll(name: "Ahmed Khaled",
                    containerText: "Pottery Collection",
                    avatarImgPath: "assets/images/ellipse-17-bg-979.png",
                    mainImgPath: "assets/images/Rectangle1004.png"),
              );
            }),
          )
        ),

      ],
    );
  }
}
