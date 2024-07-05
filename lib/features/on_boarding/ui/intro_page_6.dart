
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/core/theming/values_manager.dart';
import 'package:flutter_application_1/features/crafter/Intro/ui/intro.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../widget/custom_checkbox.dart';
import 'intro_page_7.dart';

class IntroPage6 extends StatefulWidget {
  const IntroPage6({super.key});

  @override
  State<IntroPage6> createState() => _IntroPage6State();
}

class _IntroPage6State extends State<IntroPage6> {
  bool customer = false;
  bool Crafter = false;
  bool Delivery = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsetsDirectional.only(start: AppPadding.p20),
              height: 242.h,
              width: 375.w,
              color: ColorManager.olive2,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to our ",
                      style: TextStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s20,
                          fontWeight: FontWeightManager.medium)),
                  Text("Handicrafts Community!",
                      style: TextStyle(
                          color: ColorManager.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeightManager.medium)),
                  SizedBox(height: 10.h),
                  Text("Please choose account type",
                      style: TextStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.regular)),
                ],
              )),
           SizedBox(
            height: 24.h,
          ),

          Padding(
            padding:  EdgeInsetsDirectional.only(start: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: customer,
                      onChanged: (value) {
                        setState(() {
                          customer = value;
                          context.pushReplacement(AppRouter.customerintropagepath);

                        });
                      },
                    ),
                     SizedBox(width: 10.w),
                     Text("Customer",
                        style:
                            TextStyle(fontSize: FontSize.s18, fontWeight: FontWeightManager.medium)),
                  ],
                ),
                 SizedBox(height: 22.h),


                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: Crafter,
                      onChanged: (value) {
                        setState(() {
                          Crafter = value;
                        context.pushReplacement(AppRouter.crafterintropagepath);
                        });
                      },
                    ),
                     SizedBox(width: 10.w),
                      Text("Crafter",
                        style:
                        TextStyle(fontSize: FontSize.s18, fontWeight: FontWeightManager.medium)),
                  ],
                ),
                 SizedBox(height: 22.h),
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: Delivery,
                      onChanged: (value) {
                        setState(() {
                          Delivery = value;
                          context.pushReplacement(AppRouter.deliveryintropagepath);

                        });
                      },
                    ),
                     SizedBox(width: 10.w),
                     Text("Delivery",
                        style:
                        TextStyle(fontSize: FontSize.s18, fontWeight: FontWeightManager.medium)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
