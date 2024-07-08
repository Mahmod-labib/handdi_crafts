import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
            size: 24.r,
          ),
          onPressed: () {
            context.pushReplacement(AppRouter.customerhomepath);
          },
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/notification.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),
    body: Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 137.h , left: 68.w , right: 68.w , bottom: 14.h) ,
          child: SvgPicture.asset("assets/images/empty_cart.svg" , width: 240 , height: 265,),
        ),
      Text("No Items!" , style: TextStyle(color: ColorManager.black , fontWeight: FontWeightManager.medium ,
      fontSize: FontSize.s18,
      ),),

        SizedBox(height: 12.h,),
        Text("There’re no items in your cart yet." , style: TextStyle(color: ColorManager.grey2 , fontWeight: FontWeightManager.thin ,
          fontSize: FontSize.s14,
        ),),
        Text("Take a look at our products" , style: TextStyle(color: ColorManager.grey2 , fontWeight: FontWeightManager.thin ,
          fontSize: FontSize.s14,
        ),),
      ],
    ),
    );
  }
}
