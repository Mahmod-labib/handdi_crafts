import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    required this.onPressed,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Function() onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(border: Border.all(color: borderColor ?? Colors.transparent),
          color: backgroundColor ?? const Color(0xFF7FB04F),
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.5.r,
              spreadRadius: 0.5.r,
              offset: Offset.fromDirection(90),
            )
          ],
        ),
        margin:  EdgeInsets.all(8.sw),
        padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: FontSize.s16,
              color: textColor ?? ColorManager.white,
              fontWeight: FontWeightManager.medium,
            ),
          ),
        ),
      ),
    );
  }
}
