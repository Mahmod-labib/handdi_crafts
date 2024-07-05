import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/font_manager.dart';
class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding:  EdgeInsetsDirectional.only(bottom: 10.h,top: 10.h,start: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)
            ,border: Border.all(width: 1.w,color: ColorManager.white)),
        width: 334.w,
        height: 132.h,
        child: Row(
          children: [
            ClipRRect(
              borderRadius:  BorderRadius.only(
                bottomLeft: Radius.circular(17.r),
                bottomRight: Radius.circular(17.r),
              ),
              child: Image.asset(
                "assets/images/Rectangle 1004.png",
                height: 110.h,
                width: 110.w,
              ),
            ),
             SizedBox(width: 12.w,),
            Expanded(
              child: Column(
                children: [
                   SizedBox(height: 5.h),
                   Text("Beginner’s Guide to Crochet Workshop",
                      style: TextStyle(
                          fontSize: FontSize.s14,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.black)),
                   SizedBox(height: 8.h,),
                  Row(children: [
                    Image.asset("assets/images/Ellipse 17.png",width: 16.w,height: 16.h),
                    const SizedBox(width: 4,),
                     Text("Salma Mostafa",
                        style: TextStyle(
                            fontSize: FontSize.s8,
                            fontWeight: FontWeightManager.thin,
                            color: ColorManager.black)),
                  ]),
                   SizedBox(height: 18.h),

                  Row(
                    children: [
                      SizedBox(
                        width: 159.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child:  LinearProgressIndicator(
                            value: 0.1,
                            backgroundColor: ColorManager.white4,
                            valueColor: AlwaysStoppedAnimation<Color>(ColorManager.olive2),
                          ),
                        ),
                      ),
                       SizedBox(width: 7.w),
                       Text("1/9",style: TextStyle(color: ColorManager.grey2,fontSize: FontSize.s9,fontWeight: FontWeightManager.regular)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
