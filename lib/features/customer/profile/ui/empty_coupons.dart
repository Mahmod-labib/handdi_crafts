import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class EmptyCoupons extends StatelessWidget {
  const EmptyCoupons({super.key});

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
            context.pushReplacement(AppRouter.profilepath);
          },
        ),
        title: Text(
          "Coupons",
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
            child: SvgPicture.asset("assets/images/empty_coupons_img.svg" , width: 240 , height: 265,),
          ),
          Text("No Coupons!" , style: TextStyle(color: ColorManager.black , fontWeight: FontWeightManager.medium ,
            fontSize: FontSize.s18,
          ),),

          SizedBox(height: 12.h,),
          Text("You don’t have any coupons yet." , style: TextStyle(color: ColorManager.grey2 , fontWeight: FontWeightManager.thin ,
            fontSize: FontSize.s14,
          ),),
        ],
      ),
    );
  }
}
