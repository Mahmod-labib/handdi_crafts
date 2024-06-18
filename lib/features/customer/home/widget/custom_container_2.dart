import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 20.w , right: 7.w, bottom: 20.h),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(

          children: [
            Container(
              width: 335.w,
              height: 74.h,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(10.r) ,topRight:Radius.circular(10.r) ),
                gradient: LinearGradient(
                  colors: [ColorManager.beige, ColorManager.white2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Padding(
                    padding: EdgeInsets.all(16.0.r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start ,
                      children: [
                        Text("Beginner’s Guide to Candle" ,
                          style: TextStyle(fontWeight: FontWeightManager.regular , fontSize: FontSize.s14 , color: ColorManager.black) ,),
                        Text("Making Workshop" ,
                          style: TextStyle(fontWeight:FontWeightManager.regular , fontSize: FontSize.s14 , color: ColorManager.black) ,),

                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset("assets/images/Rectangle 1003.png" , width: 100.w, height: 74.h,),
                          Container(
                            width: 46.w,
                            height: 15.h,
                            alignment: Alignment.center,
                            decoration:  BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(10.r)),
                              gradient: LinearGradient(
                                colors: [ColorManager.beige, ColorManager.white2],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),),
                            child:  Text("Online", style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s8 , fontWeight: FontWeightManager.thin),),

                          )

                        ],
                      ),
                    ],
                  ),
                ],
              ),

            ),
             SizedBox(
              width: 335.w,
              height: 31.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h , left: 16.w , bottom: 7.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month_outlined , color: ColorManager.olive2,size: FontSize.s16,),
                            SizedBox(width: 2.w,),
                            Text("4th November 2023",style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s8 , fontWeight:FontWeightManager.thin), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.h , right: 16.w , bottom: 7.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.access_time_rounded , color: ColorManager.olive2,size: FontSize.s16,),
                            SizedBox(width: 2.w,),
                            Text("02:00 PM",style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s8 , fontWeight:FontWeightManager.thin), )
                          ],

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
