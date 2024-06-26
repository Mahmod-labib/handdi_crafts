import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(        backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          SvgPicture.asset(
            "assets/images/notification.svg",
          ),
          SizedBox(
            width: 15.w,
          ),
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 40.h, right: 67.w, left: 67.w, bottom: 14.h),
            child: SvgPicture.asset(
              "assets/images/payment_success.svg",
              width: 240.w,
              height: 265.h,
            ),
          ),
          Text(
            "Congratulations!",
            style: TextStyle(
              color: ColorManager.black,
              fontSize: FontSize.s18,
              fontWeight: FontWeightManager.medium,
            ),
          ),
          Column(
            children: [
              Text("Your order has been completed successfully",
                  style: TextStyle(
                    color: ColorManager.grey2,
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.thin,
                  )),
            ],
          ),

          Padding(
            padding:  EdgeInsets.only(top: 30.h , bottom: 8.h , left: 24.w , right: 24.w),
            child: CustomButton(
                text: "Track Order",
                fun: (){},
                height: 46.h,
                width: 327.w,
                btncolor: ColorManager.olive2,
                textcolor: ColorManager.white2),
          ),
          Padding(
            padding:EdgeInsets.only( bottom: 20.h , left: 24.w , right: 24.w),
            child: CustomButton(
                text: "Back to Home",
                fun: (){
                  context.pushReplacement(AppRouter.customerhomepath);
                },
                height: 46.h,
                width: 327.w,
                btncolor: ColorManager.white2,
                textcolor: ColorManager.olive2),
          ),
        ],
      ),
    );
  }
}
