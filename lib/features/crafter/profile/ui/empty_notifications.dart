import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class EmptyNotifications extends StatelessWidget {
  const EmptyNotifications({super.key});

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
          "Notifications",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 137.h , left: 68.w , right: 68.w ) ,
            child: SvgPicture.asset("assets/images/no-notification.svg" , width: 240.w , height: 265.h,),
          ),
          Text("No Notifications Yet!" , style: TextStyle(color: ColorManager.black ,
            fontWeight: FontWeightManager.medium ,
            fontSize: FontSize.s18,
          ),),

        ],
      ),
    );
  }
}
