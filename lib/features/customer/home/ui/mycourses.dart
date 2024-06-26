import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';
import '../../../../widgets/listview_item_container.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title:  Text(
            "My Courses",
            style: TextStyle(
              color: ColorManager.black,
              fontSize: FontSize.s18,
              fontWeight: FontWeightManager.medium,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        actions: [
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h, left: 20.w, right: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("2 Courses",
                style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                    color: ColorManager.black)),
             SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        context.pushReplacement(AppRouter.courseslessonspath);
                      },
                      child: const ItemContainer()),
                  separatorBuilder: (context, index) =>  SizedBox(
                    height: 16.h,
                  ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}
