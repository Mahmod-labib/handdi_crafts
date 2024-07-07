import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/button.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/delivery_order_card.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Pickup extends StatelessWidget {
  const Pickup({super.key});

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
        actions: [
          SvgPicture.asset("assets/images/notification.svg"),
          SizedBox(
            width: 18.w,
          )
        ],
        title: Text(
          "Pickup",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 24.w, top: 31.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 13.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Hamza",
                      style: TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.medium,
                          color: ColorManager.black),
                    ),
                    Text(
                      "Pickup at 5:35",
                      style: TextStyle(
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                          color: ColorManager.grey2),
                    ),
                  ],
                ),
                SizedBox(
                  width: 90.w,
                ),
                SvgPicture.asset("assets/images/Call.svg"),
                SizedBox(
                  width: 16.w,
                ),
                SvgPicture.asset("assets/images/Send.svg"),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 401.h,
              width: 327.w,
              decoration: BoxDecoration(
                color: ColorManager.white3,
                borderRadius: BorderRadius.all(Radius.circular(24)
                ),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Number",
                    style: TextStyle(
                        fontSize: FontSize.s14,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.grey2),
                  ),
                  Text(
                    "214411",
                    style: TextStyle(
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.medium,
                        color: ColorManager.black),
                  ),
                  SizedBox(height: 40.h,),
                  Row(children: [
                    Text(
                      "Upload Order Image",
                      style: TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.regular,
                          color: ColorManager.grey2),
                    ),
                    SizedBox(width: 94.w,),
                    SvgPicture.asset("assets/images/mynaui_upload.svg",),
                  ],),
                  SizedBox(height: 24.h,),
                  Image.asset("assets/images/Rectangle 922.png",width: 80.w,height: 100.h,),
                  SizedBox(height: 42.h,),
                  Center(
                    child: CustomButton(
                        text: "Get Direction",
                        onPressed: () {},
                        width: 183.w,
                        height: 56.h,
                        fontSize: FontSize.s14,
                        fontWeight: FontWeightManager.medium),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
