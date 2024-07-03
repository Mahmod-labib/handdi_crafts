import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/Search/widget/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CrafterSearch extends StatelessWidget {
  const CrafterSearch({super.key});

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
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 31.h,
            ),
            SizedBox(
                width: 324.w,
                height: 40.h,
                child: CustomTextFormField(
                  contentPadding: EdgeInsets.only(
                    top: 11.h,
                    left: 16.w,
                  ),
                  hintText: "abc",
                  hintStyle: TextStyle(
                      fontSize: FontSize.s12,
                      color: ColorManager.grey2,
                      fontWeight: FontWeightManager.thin),
                  width: 324.w,
                  height: 40.h,
                  prefixIcon: Image.asset("assets/images/Search.png"),
                )),
            SizedBox(height: 86.h,),
            Image.asset("assets/images/Illustration found.png"),
            SizedBox(height: 14.h,),
            Text(
              "Result Not Found!",
              style: TextStyle(
                fontSize: FontSize.s18,
                color: ColorManager.black,
                fontWeight: FontWeightManager.bold,
              ),
            ),
            SizedBox(height: 12.h,),
            Text(
              'Whoops ... we couldn’t find results',
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.grey2,
                fontWeight: FontWeightManager.regular,
              ),
            ),
            Text(
              'for “abc”',
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.grey2,
                fontWeight: FontWeightManager.regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
