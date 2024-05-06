import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChildScroll extends StatelessWidget {
   CustomChildScroll({super.key , required this.name ,required this.containerText, required this.avatarImgPath ,
    required this.mainImgPath
  } );
  String mainImgPath="";
  String containerText="";
  String avatarImgPath="";
  String name="";

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                width:157.w ,
                height: 190.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                )),
            Positioned(
                top: 1,
                child: Image.asset(mainImgPath , width: 157.w,height: 152.h,)),
            Positioned(
              bottom: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 90.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:  ColorManager.white3,
                            ),
                            child:  Text(containerText , style:  TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s8  , fontWeight: FontWeightManager.thin),),
                          ),
                           SizedBox(width: 7.w),
                           CircleAvatar(radius: 20.r,
                            backgroundImage: AssetImage(avatarImgPath),
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          Text(name,style:  TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s7  , fontWeight: FontWeightManager.thin),),
                        ],
                      ),

                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
