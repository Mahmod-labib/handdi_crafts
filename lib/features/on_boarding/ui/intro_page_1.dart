import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SvgPicture.asset(
              "assets/images/onBoarding_P1.svg",
              width: 245.w,
              height: 360.h,
            ),
            const SizedBox(height: 45),
             Center(
              child: Text(
                "Join Our Community of Handicrafts !",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Colors.black,
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
