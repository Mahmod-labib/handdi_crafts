import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.fun});
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: fun,
      child: Container(
        width: 170.w,
        height: 46.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: ColorManager.olive2,
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag , color: ColorManager.white, size:FontSize.s24,),
            SizedBox(width: 8.w,),
            Text("Add to Cart" , style: TextStyle(
              fontSize: FontSize.s14 , fontWeight: FontWeightManager.medium ,
              color: ColorManager.white,
            ),)
          ],
        ),
      ),
    );
  }
}
