import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({super.key , required this.imgPath , required this.text});
  String imgPath='';
  String text='';

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80.w,
      height: 100.h,
      decoration: BoxDecoration(
        color:  ColorManager.white2,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Image.asset(imgPath, width: 80.w , height: 80.h,),
           SizedBox(height: 1.h,),
           Text(text , style:  TextStyle(fontSize: FontSize.s10 , fontWeight: FontWeightManager.regular , color: ColorManager.black ),),

        ],
      ),
    );

  }
}
