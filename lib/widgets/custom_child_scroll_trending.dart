import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theming/font_manager.dart';

class CustomTrndingScroll extends StatelessWidget {
   CustomTrndingScroll({super.key , required this.imgPath , required this.name} );
   String imgPath='';
  String name='';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157.w,
      height: 190.h,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
      ),
      child:  Column(
        children: [
          Image(image: AssetImage(imgPath) , width: 157.w,height: 152.h,),
           SizedBox(height: 12.h,),
          Text(name ,style:  TextStyle(
            color: ColorManager.black,
            fontSize: FontSize.s10,
            fontWeight: FontWeightManager.regular,
          ),)
        ],
      ),
    );

  }
}
