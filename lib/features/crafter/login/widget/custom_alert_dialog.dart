import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});
  void showCustomDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context) => SizedBox(
      width: 327.h,
      height: 401.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            title: Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: ColorManager.white3,
                    shape: BoxShape.circle),
                child: Image.asset(
                    "assets/images/img_icoutlinecheck.png")),
            content: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: FontSize.s20,
                      fontWeight: FontWeightManager.bold,
                      color: ColorManager.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "you login successfully into Handicrafts app",
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    color: ColorManager.grey2,
                    fontWeight: FontWeightManager.thin,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    ));

  }

  @override
  Widget build(BuildContext context) {
   return const CustomAlertDialog();

  }
}
