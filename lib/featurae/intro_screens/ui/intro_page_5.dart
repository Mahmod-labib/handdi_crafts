import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'intro_page_6.dart';

class IntroPage5 extends StatefulWidget {
  const IntroPage5({super.key});

  @override
  State<IntroPage5> createState() => _IntroPage5State();
}

class _IntroPage5State extends State<IntroPage5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 27.w),
          child: Container(
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: ColorManager.olive2,
                borderRadius: BorderRadiusDirectional.circular(32.r)),
            width: 327.w,
            height: 46.h,

            child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const IntroPage6()));

                
                ;
              },
              child: Text("Get Started",
                  style: TextStyle(
                      fontSize: FontSize.s16,
                      color: Colors.white,
                      fontWeight: FontWeightManager.medium)),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/onBoarding_P5.svg",
              width: 245.w,
              height: 360.h,
            ),
            SizedBox(height: 45.h),
            Center(
              child: Text(
                "Product Delivery",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s22,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ),
            Center(
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s22,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
