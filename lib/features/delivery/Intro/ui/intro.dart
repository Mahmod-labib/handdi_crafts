import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DeliveryIntroPage extends StatefulWidget {
  const DeliveryIntroPage({super.key});

  @override
  State<DeliveryIntroPage> createState() => _DeliveryIntroPageState();
}

class _DeliveryIntroPageState extends State<DeliveryIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
              angle: 6 * 3.14159265359 / 180,
              child: Image.asset(
                "assets/images/img_logo.png",
                width: 102.84.w,
                height: 157.36.h,
              )),
          SizedBox(
            height: 10.h,
          ),
          Center(
              child: Text(
                "Let’s get started!",
                style: TextStyle(
                    fontSize: FontSize.s22, fontWeight: FontWeightManager.medium, color: ColorManager.black),
              )),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Login to enjoy the features we’ve ",
            style: TextStyle(
                fontSize: FontSize.s15,
                fontWeight: FontWeightManager.thin,
                color: ColorManager.grey2),
          ),
          Text(
            "provided",
            style: TextStyle(
                fontSize:FontSize.s15 ,
                fontWeight:FontWeightManager.thin,
                color:ColorManager.grey2),
          ),
          SizedBox(
            height: 25.h,
          ),
          Container(
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color:  ColorManager.olive2,
                borderRadius: BorderRadiusDirectional.circular(32.r)),
            width: 263.w,
            height: 56.h,

            child: MaterialButton(
              onPressed: () {
                context.pushReplacement(AppRouter.deliveryloginPath);
              },
              child:  Text("Login",
                  style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
            ),
          ),
          SizedBox(height: 15.h,),
          Container(
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(32.r),
              border: Border.all(color: ColorManager.olive2, width: 2.w),
            ),
            width: 263.w,
            height: 56.h,
            child: MaterialButton(
              onPressed: () {
                context.pushReplacement(AppRouter.deliverysignupPath);
              },
              child:  Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.olive2,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
