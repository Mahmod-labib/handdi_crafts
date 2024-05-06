import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/values_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCandleCard extends StatelessWidget {
   CustomCandleCard({super.key , required this.imgPath,  required this.text1 ,required this.text2 ,required this.priceBefore , required this.priceAfter});
  String imgPath="";
  String text1="";
  String text2="";
  String priceBefore="";
   String priceAfter="";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 312.h,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
      ),
      child:   Column(
        children: [
          Stack(
              alignment: Alignment.topRight,
              children: [
            Image(image: AssetImage(imgPath) , width: 156.w,height: 228.h,),
             Positioned(
                top: 18.5.h,
                right: 18.5.w,
                child: Icon(Icons.favorite_outline , size: AppSize.s24,color: ColorManager.white)),
          ]),
           SizedBox(height: 12.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1 ,style:  TextStyle(
                color: ColorManager.black,
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.regular,
              ),),
              Text(text2 ,style:  TextStyle(
                color: ColorManager.black,
                fontSize: FontSize.s14,
                fontWeight: FontWeight.w500,
              ),),
               SizedBox(height: 3.h,),
              Row(
                children: [
                  Text(priceBefore ,style:  TextStyle(
                      color: ColorManager.grey4,
                      fontSize: 14,
                      fontWeight: FontWeightManager.regular,
                      decoration: TextDecoration.lineThrough
                  ) ,),
               SizedBox(width: 3.w,),
                  Text(priceAfter ,style:  TextStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                  ) ,),
                ],
              )
            ],
          )
        ],
      ),
    );

  }
}
