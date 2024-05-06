import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryCard extends StatelessWidget {
   CustomCategoryCard({super.key , required this.cardName , required this.imgPath});
  String cardName="";
  String imgPath="";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 262.h,
      decoration:  BoxDecoration(
        color: ColorManager.white2,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child:   Column(
        children: [
          Image(image: AssetImage(imgPath) , width: 156.w,height: 212.h,),
          SizedBox(height: 12.h,),
          Text(cardName ,style: TextStyle(
            color: ColorManager.black,
            fontSize: FontSize.s14,
            fontWeight: FontWeightManager.medium,
          ),)
        ],
      ),
    );

  }
}
