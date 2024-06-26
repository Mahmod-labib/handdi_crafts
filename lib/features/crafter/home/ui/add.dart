import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
      children: [
        Container(
          height: 170.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/images/Edit Square.svg" ,width:56.w ,height: 56.h,),

              Text(
                "Publish Course",
                style: TextStyle(
                  fontSize: FontSize.s18,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ],
          ),
        ),
      ],
    ),);
  }
}
