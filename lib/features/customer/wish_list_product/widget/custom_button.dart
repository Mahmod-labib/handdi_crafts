import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.fun,
      required this.height,
      required this.width,
      required this.btncolor,
      required this.textcolor});
  final String text;
  final VoidCallback fun;
  final double height;
  final double width;
  final Color btncolor;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: ColorManager.olive2,
              strokeAlign: BorderSide.strokeAlignInside),
          borderRadius: BorderRadius.circular(35.r)),
      child: MaterialButton(
        color: btncolor ?? ColorManager.olive2,
        minWidth: width,
        height: height,
        onPressed: fun,
        child: Text(text,
            style: TextStyle(
                fontSize: FontSize.s16,
                color: textcolor,
                fontWeight: FontWeightManager.medium)),
      ),
    );
  }
}
