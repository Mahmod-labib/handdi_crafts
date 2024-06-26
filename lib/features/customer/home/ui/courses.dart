import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/listview_item_card.dart';

class CoursesAndWorkshop extends StatefulWidget {
  const CoursesAndWorkshop({super.key});

  @override
  State<CoursesAndWorkshop> createState() => _CoursesAndWorkshopState();
}

class _CoursesAndWorkshopState extends State<CoursesAndWorkshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Courses & Workshop",
          style: TextStyle(
            color: ColorManager.black2,
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
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 5.w, right: 6.w, top: 31.h, bottom: 7.h),
              child: CustomTextFormField(
                width: 324.w,
                height: 40.h,
                prefixIcon:
                    Icon(Icons.search_outlined, color: ColorManager.grey2),
                hintText: "Search",
                hintStyle: TextStyle(color: ColorManager.grey2),
                suffixIcon: Icon(Icons.list, color: ColorManager.olive2),
              ),
            ),
            Expanded(
                child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 16.h,
              ),
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.pushReplacement(AppRouter.coursebookingpath);
                  },
                  child: const ItemCard()),
              itemCount: 5,
            ))
          ],
        ),
      ),
    );
  }
}
