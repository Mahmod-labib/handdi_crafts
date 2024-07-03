import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_drop_down_field.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_text_form_field.dart';
import 'package:flutter_application_1/features/crafter/home/widget/button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCoupon extends StatefulWidget {
  AddCoupon({super.key});

  @override
  State<AddCoupon> createState() => _AddCouponState();
}

class _AddCouponState extends State<AddCoupon> {
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
          onPressed: () {},
        ),
        title: Text(
          "Add Coupon",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [


        SizedBox(
          height: 31.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(children: [


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
              hintText: 'Discount code',

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
              hintText: 'Start Date',

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
              hintText: 'End Date',

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
              hintText: 'Terms and conditions of use',

              obscureText: false,
              textInputType: TextInputType.number,
            ),
            SizedBox(
              height: 16.h,
            ),



            CustomDropDownField(


              hintText: "Course name",
            ),









            SizedBox(
              height: 70.h,
            ),
            CustomButton(
                text: "Apply",
                onPressed: () {},
                width: 327.w,
                height: 56.h,
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.medium),
          ]),
        ),
      ]),
    );
  }
}
