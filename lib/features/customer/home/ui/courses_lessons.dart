import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CourseLessons extends StatefulWidget {
  const CourseLessons({Key? key}) : super(key: key);

  @override
  State<CourseLessons> createState() => _CourseLessonsState();
}

class _CourseLessonsState extends State<CourseLessons> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          onPressed: () {
            context.pushReplacement(AppRouter.mycoursespath);
          },
          icon:  Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
          ),
        ),
        title:  Padding(
          padding: EdgeInsets.only(top: 9.0.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Beginner’s Guide to Crochet ",
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s18,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
              Text(
                "Workshop",
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s18,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h, left: 20.w, right: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Lesson 1-9",
              style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.regular,
                color: ColorManager.black,
              ),
            ),
             SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    context.pushReplacement(AppRouter.playlessonpath);
                  },
                  child: ListTile(
                    contentPadding:  EdgeInsetsDirectional.only(start: 16.h),
                    autofocus: true,
                    leading: Icon(
                      Icons.play_circle,
                      size: 35.r,
                      color: _selectedIndex == index ? const Color(0xFF7FB04F) : const Color(0xFFE5E7EB),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: _selectedIndex == index ?  ColorManager.olive2 :ColorManager.white ,
                        width: 1.0.w,
                      ),
                    ),
                    title:  Text(
                      "1. Introduction to Crochet",
                      style: TextStyle(
                        fontSize: FontSize.s14,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.black,
                      ),
                    ),
                    subtitle:  Text(
                      "12:15",
                      style: TextStyle(
                        color: ColorManager.grey2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s10,
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) =>  SizedBox(
                  height: 16.h,
                ),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
