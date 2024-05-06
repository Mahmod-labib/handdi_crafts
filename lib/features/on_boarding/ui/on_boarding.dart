
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page_1.dart';
import 'intro_page_2.dart';
import 'intro_page_3.dart';
import 'intro_page_4.dart';
import 'intro_page_5.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white,
      // elevation: 0),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 30.h),
        child: Stack(
          children: [
            Center(
              child: PageView(controller: _controller,

                children: const [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                  IntroPage4(),
                  IntroPage5(),
                ],
              ),
            ),
            Container(alignment: Alignment.topRight,
              child: TextButton(onPressed: () {
                _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
              },
                  child:  Text("Skip",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: FontSize.s14,
                      color: Colors.grey),)),
            ),
            Container(
                alignment: const Alignment(0,0.6),
                child: SmoothPageIndicator(controller: _controller, count: 5,
                effect:  JumpingDotEffect(dotHeight: 4.h,dotWidth: 12.63.w,
                  radius: 56.r,

                  activeDotColor: ColorManager.olive1,dotColor: ColorManager.olive2,
                ),)),
          ],
        ),
      ),
    );
  }
}
