import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_drop_down_field.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_text_form_field.dart';
import 'package:flutter_application_1/features/crafter/home/widget/button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PublishProducts2 extends StatefulWidget {
  const PublishProducts2({super.key});

  @override
  State<PublishProducts2> createState() => _PublishProducts2State();
}

class _PublishProducts2State extends State<PublishProducts2> {
  // String? productType;
  //
  // String? productName;
  //
  // double? productPrice;
  //
  // double? percentageDiscount;

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
            context.pushReplacement(AppRouter.publishproducts1path);
          },
        ),
        title: Text(
          "Publish Product",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 17.h),
              child: Text(
                "Add at least 3 photos",
                style: TextStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 12.h),
              child: ClipRRect(borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  width: 80.w,
                  height: 80.h,
                  "assets/images/Rectangle 4050.png",
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(children: [
                const CustomDropDownField(
                  hintText: "Add available sizes",
                ),
                SizedBox(
                  height: 16.h,
                ),
                const CustomDropDownField(
                  hintText: "Add available colors",
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Number';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  hintText: 'Width(cm)',
                  obscureText: false,
                  textInputType: TextInputType.name,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Number';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  hintText: 'Height(cm)',
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Number';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  hintText: 'Watt(w)',
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Number';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  hintText: 'Add quantity per unit',
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Number';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  hintText: 'Stock',
                  obscureText: false,
                  textInputType: TextInputType.name,
                ),
                SizedBox(
                  height: 16.h,
                ),

                SizedBox(height:142.h ,width: 327.w,
                  child: CustomTextFormField(maxLines: 10,
                    contentPadding: EdgeInsets.only(left: 24.w,top: 12.h),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Number';
                      }
                      return null;
                    },
                    controller: TextEditingController(),
                    hintText: 'Description',
                    obscureText: false,
                    textInputType: TextInputType.name,
                  ),
                ),

                SizedBox(
                  height: 79.h,
                ),
                CustomButton(
                    text: "Publish",
                    onPressed: () {    context.pushReplacement(AppRouter.firstpublishproductpath);},
                    width: 327.w,
                    height: 56.h,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.medium),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
