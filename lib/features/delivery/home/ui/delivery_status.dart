import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/Search/widget/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            context.pushReplacement(AppRouter.crafterhomepath);
          },
        ),
        title: Text(
          "Orders",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              height: 31.h,
            ),

            SizedBox(height: 86.h,),
            Image.asset("assets/images/Illustration.png",width: 240.w,height: 265.h,),
            SizedBox(height: 14.h,),
            Text(
              "Looking for orders",
              style: TextStyle(
                fontSize: FontSize.s18,
                color: ColorManager.black,
                fontWeight: FontWeightManager.bold,
              ),
            ),
            SizedBox(height: 12.h,),
            Text(
              'We are looking for orders and will get',
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.grey2,
                fontWeight: FontWeightManager.regular,
              ),
            ),
            Text(
              'notified when there’s order for you.',
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.grey2,
                fontWeight: FontWeightManager.regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
