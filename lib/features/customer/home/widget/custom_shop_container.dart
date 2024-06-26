import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';


class CustomShopContainer extends StatelessWidget {
  const CustomShopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 20.w ,right: 21.w ,bottom: 108.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 334.w,
              height: 337.h,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
              ),
              child:   Column(
                children: [
                   Image(image: const AssetImage("assets/images/Rectangle1110.png") , width: 334.w,height: 201.h,),
                   SizedBox(height: 8.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Find the workshop for you" ,style: TextStyle(
                        color: ColorManager.olive2,
                        fontSize: FontSize.s18,
                        fontWeight: FontWeightManager.medium,
                      ),),
                       Text("Join us to learn new crafts and try your hand " ,style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s13,
                        fontWeight: FontWeightManager.thin,
                      ),),
                       SizedBox(height: 3.h,),
                       Text("at fun techniques! " ,style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s13,
                        fontWeight: FontWeightManager.thin,
                      ),),
                      CustomButton(text: "Book Now", fun: (){}, width: 86.w, height: 28.h, btncolor: ColorManager.olive2, textcolor: ColorManager.white2,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
