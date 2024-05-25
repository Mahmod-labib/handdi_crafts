import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomButtonForgotPassword extends StatelessWidget {
   CustomButtonForgotPassword({super.key, this.trailingIconPath, this.leadingIconPath, this.title ,required this.trailingWidget});
  final String? trailingIconPath;
  final String? leadingIconPath;
  final String? title;
  var trailingWidget;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 336.w,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 1),
            color: ColorManager.grey2
        )],
      ),
      child: Center(
        child: ListTile(
          leading:  SvgPicture.asset("$leadingIconPath",
            width: 17.w,
            height: 13.h,

          ),
          title: Text("$title" ,
            style: TextStyle(
              fontSize: FontSize.s16,
              color: ColorManager.black,
              fontWeight: FontWeightManager.regular,
            ),
          ),
          // contentPadding: EdgeInsets.all(24.r),
          trailing:trailingWidget
        ),
      ),
    );

  }
}
/*
 SvgPicture.asset("$trailingIconPath",
            width: 17.w,
            height: 13.h,

          ),
 */