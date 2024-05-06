import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButtonOutlined extends StatelessWidget {
  const CustomButtonOutlined({super.key, this.leftIcon, required this.label});


  final Widget? leftIcon;

  final String? label;

  get rightIcon => null;
  @override
  Widget build(BuildContext context) {

    return  Container(
      height: 56.h,
      width: 327.w,
      decoration: BoxDecoration(
          color: const Color(0xffE5E7EB),
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.5.r,
                spreadRadius: 0.5.r,
                offset: Offset.fromDirection(90))
          ]),
      margin:  const EdgeInsets.all(8),
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ??  const SizedBox.shrink(),
      Text(
        label! ,
        style:  TextStyle(fontSize: FontSize.s16 ,fontWeight: FontWeightManager.medium, color: const Color(0xff101623))),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),

    );
  }
}
