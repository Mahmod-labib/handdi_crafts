import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';
import '../../../customer/instore_and_online_workshop/widget/listview_item_container.dart';

class CrafterUpdateCourse extends StatefulWidget {
  const CrafterUpdateCourse({super.key});

  @override
  State<CrafterUpdateCourse> createState() => _CrafterUpdateCourseState();
}

class _CrafterUpdateCourseState extends State<CrafterUpdateCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
            size: 24.r,
          ),
          onPressed: () {
            // context.pushReplacement(AppRouter.craftspath);
          },
        ),
        title: Text(
          "My Courses",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/images/Search.svg",
          ),
          SizedBox(
            width: 15.w,
          ),
          SvgPicture.asset(
            "assets/images/notification.svg",
          ),
          SizedBox(
            width: 18.w,
          ),
        ],
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)), // Radius circular=5
        child: FloatingActionButton(
          onPressed: () {
            // Your onPressed code here
          },
          backgroundColor: ColorManager.olive1,
          child: Icon(Icons.add, color: ColorManager.white2),
        ),
      ),




      body: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 21.w),
        child: ListView(

          children: [
            Text("Course name",
                style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                    color: ColorManager.olive2)),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 16.h, left: 26.w),
              decoration: BoxDecoration(
                color: ColorManager.white5,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: ColorManager.white,
                  width: 1.0,
                ),
              ),
              width: 327.w,
              height: 77.h,
              child: Text(
                "Beginner’s Guide to Crochet\nWorkshop",
                style: TextStyle(
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.regular,
                  color: ColorManager.black,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Course Content",
                    style: TextStyle(
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.olive2)),

                TextButton(
                  onPressed: () {},
                  child: Text("view all",
                      style: TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.regular,
                          color: ColorManager.olive2)),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            ListView.separated(shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {});
                  context.pushReplacement(AppRouter.playlessonpath);
                },
                child: ListTile(
                  contentPadding: EdgeInsetsDirectional.only(start: 20.w,end: 20.w),
                  autofocus: true,
                  leading: SvgPicture.asset(
                    "assets/images/Edit.svg",
                  ),
                  trailing: SvgPicture.asset(
                    "assets/images/Delete.svg",
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: ColorManager.white,
                      width: 1.0.w,
                    ),
                  ),
                  title: Text(
                    "1. Introduction to Crochet",
                    style: TextStyle(
                      fontSize: FontSize.s14,
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.black,
                    ),
                  ),
                  subtitle: Text(
                    "12:15",
                    style: TextStyle(
                      color: ColorManager.grey2,
                      fontWeight: FontWeightManager.regular,
                      fontSize: FontSize.s10,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 16.h,
              ),
              itemCount: 20,
            ),

          ],
        ),
      ),
    );
  }
}
