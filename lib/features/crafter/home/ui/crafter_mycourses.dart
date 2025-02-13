import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';
import '../../../customer/instore_and_online_workshop/widget/listview_item_container.dart';

class CrafterMyCourses extends StatefulWidget {
  const CrafterMyCourses({super.key});

  @override
  State<CrafterMyCourses> createState() => _CrafterMyCoursesState();
}

class _CrafterMyCoursesState extends State<CrafterMyCourses> {
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
            context.pushReplacement(AppRouter.crafterhomepath);
          },
        ),
        title: Text("My Courses" , style: TextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium , ),),
        actions: [
          InkWell(
              onTap: () {
                context.pushReplacement(AppRouter.craftersearchpath);
              },
              child: InkWell(
                  onTap: () {
                    context.pushReplacement(AppRouter.craftersearchpath);
                  },
                  child: SvgPicture.asset("assets/images/Search.svg" ,))),
          SizedBox(width: 15.w,),
          InkWell(
              onTap: () {

                context.pushReplacement(AppRouter.crafternotificationspath);
              },
              child: SvgPicture.asset("assets/images/notification.svg" ,)),
          SizedBox(width: 18.w,),
        ],
      ),
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
                        context.pushReplacement(AppRouter.crafterupdatecoursepath);
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
