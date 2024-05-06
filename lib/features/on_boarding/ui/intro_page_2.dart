import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10,),
           Image.asset( "assets/images/onBoarding_P2.png",width: 245.w, height: 360.h),
            const SizedBox(height: 45),
             Center(
              child: Text(
                "Post Handmade Products",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: ColorManager.black,
                  fontSize: FontSize.s22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
             Center(
              child: Text(
                "For Sale",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: ColorManager.black,
                  fontSize: FontSize.s22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
