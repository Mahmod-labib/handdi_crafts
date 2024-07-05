import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomReviewButton extends StatelessWidget {
  const CustomReviewButton(
      {super.key,
        required this.text,
        required this.fun,

        });
  final String text;
  final VoidCallback fun;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: ColorManager.olive2,
              strokeAlign: BorderSide.strokeAlignInside),
          borderRadius: BorderRadius.circular(20.r)),
      child: MaterialButton(
        minWidth: 89.w,
        height: 34.h,
        onPressed: fun,
        child: Text("$text",
            style: TextStyle(
                fontSize: FontSize.s12,
                color: ColorManager.olive2,
                fontWeight: FontWeightManager.thin)),
      ),
    );
  }
}
