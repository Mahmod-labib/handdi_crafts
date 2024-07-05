import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/crafter/My%20Customers%20Reviews/widget/verified_reviews_courses.dart';
import 'package:flutter_application_1/features/crafter/My%20Customers%20Reviews/widget/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomersReviews extends StatelessWidget {
  const MyCustomersReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
            size: 24.r,
          ),
          onPressed: () {
            // context.pushReplacement(AppRouter.crafterprofilepath);
          },
        ),
        title: Text(
          "Review",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body:    ListView(physics: const BouncingScrollPhysics(),
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) {
                return const VerifiedReviewsCourses();
              }),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: CustomButton(
                text: "Load More",
                onPressed: () {},
                width: 327.w,
                height: 56.h,
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.medium),
          ),
        ],
      ),

    );
  }
}
