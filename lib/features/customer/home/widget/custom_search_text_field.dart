import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../widgets/custom_text_field.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return                Padding(
      padding: EdgeInsets.only(left: 20.w , right: 24.w , bottom: 26.h),
      child: Align(
        alignment: Alignment.topLeft,
        child: CustomTextFormField(
          prefixIcon: Icon(Icons.search , size:16,color: ColorManager.grey2 ),
          //textStyle: TextStyle(fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin , color: ColorManager.black2),
          hintText: 'Search for crafts, products, courses...',
          hintStyle: TextStyle(fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin , color: ColorManager.grey2),
          suffixIcon: Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/images/Filter.svg"),
                SizedBox(width: 12.w,),
                SvgPicture.asset("assets/images/Camera.svg"),
              ],
            ),
          ),
          fillColor: ColorManager.white,

        ),
      ),
    );

  }
}
