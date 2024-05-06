import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theming/color_manager.dart';

class InputQuantity extends StatelessWidget {
  const InputQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 52.w,
          height: 46.h,
          decoration:  BoxDecoration(
            shape: BoxShape.rectangle,
              border: Border(
                right: BorderSide(color: ColorManager.white),
                left: BorderSide(color: ColorManager.white),
                top: BorderSide(color: ColorManager.white),
                bottom: BorderSide(color: ColorManager.white),
              ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),bottomLeft: Radius.circular(30.r))
          ),
          child: const Center(child: Text("-"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20 , color: Color(0xff101623)), )),
        ),
        Container(width: 52.w,
          height: 46.h,
          decoration:  BoxDecoration(border: Border(
            right: BorderSide(color:ColorManager.white),
            left: BorderSide(color: ColorManager.white),
            top: BorderSide(color: ColorManager.white),
            bottom: BorderSide(color: ColorManager.white),
          ),
              shape: BoxShape.rectangle,
          ),
          child:  Center(child: Text("1"  ,style: TextStyle(fontWeight: FontWeightManager.thin , fontSize: FontSize.s20 , color: ColorManager.black), )),
        ),
        Container(
          width: 52.w,
          height: 46.h,
          decoration:  BoxDecoration(border: Border(
            right: BorderSide(color: ColorManager.white),
            left: BorderSide(color: ColorManager.white),
            top: BorderSide(color:ColorManager.white),
            bottom: BorderSide(color:ColorManager.white),
          ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30.r),bottomRight: Radius.circular(30.r))
          ),
          child:  Center(child: Text("+"  ,style: TextStyle(fontWeight: FontWeightManager.thin , fontSize: FontSize.s20 , color: ColorManager.black), )),
        ),

      ],
    );
  }
}
