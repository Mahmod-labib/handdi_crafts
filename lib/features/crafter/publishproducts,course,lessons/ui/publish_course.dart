import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_drop_down_field.dart';
import 'package:flutter_application_1/features/crafter/publishproducts,course,lessons/widget/custom_text_form_field.dart';
import 'package:flutter_application_1/features/crafter/home/widget/button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PublishCourse extends StatefulWidget {
  PublishCourse({super.key});

  @override
  State<PublishCourse> createState() => _PublishCourseState();
}

class _PublishCourseState extends State<PublishCourse> {
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
            context.pushReplacement(AppRouter.addpath);
          },
        ),
        title: Text(
          "Publish Course",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 17.h),
            child: Text(
              "Add illustrative image",
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.black,
                fontWeight: FontWeightManager.medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(28),
            margin: EdgeInsets.only(
              left: 20.w,
              top: 12.h,
            ),
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: ColorManager.white2,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: ColorManager.olive2, width: 1.w)),
            child: SvgPicture.asset(
              width: 24.w,
              height: 24.h,
              "assets/images/Camera2.svg",
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      height: 56.h,
                      width: 160.w,
                      contentPadding: EdgeInsets.only(
                        left: 24.w,
                        right: 19.h,
                        bottom: 16.h,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid Number';
                        }
                        return null;
                      },
                      controller: TextEditingController(),
                      prefixIcon: Image.asset("assets/images/Calendar.png",),
                      hintText: 'From date',
                      obscureText: false,
                      textInputType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      height: 56.h,
                      width: 160.w,
                      contentPadding: EdgeInsets.only(
                          left: 24.w, right: 16.h, bottom: 16.h),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid Number';
                        }
                        return null;
                      },
                      controller: TextEditingController(),
                      prefixIcon: Image.asset("assets/images/Calendar.png",),
                      hintText: 'From date',
                      obscureText: false,
                      textInputType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomDropDownField(

                prefixIcon: Image.asset("assets/images/Work.png",),
                hintText: "Craft type",
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
                hintText: 'Course name',
                prefixIcon: Image.asset("assets/images/Edit.png",),
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
                hintText: 'Course hours',
                prefixIcon: Image.asset("assets/images/Time Square.png",),
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
                prefixIcon: Image.asset("assets/images/Location.png",),
                hintText: 'Address/Online',
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
                prefixIcon: Image.asset("assets/images/Video.png",),
                hintText: 'Number of lectures',
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
                prefixIcon: Image.asset("assets/images/Ticket.png",),
                hintText: 'Ticket’s price',
                obscureText: false,
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 142.h,
                width: 327.w,
                child: CustomTextFormField(
                  maxLines: 10,
                  contentPadding: EdgeInsets.only(left: 24.w, top: 12.h),
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
                height: 24.h,
              ),
              CustomButton(
                  text: "Apply",
                  onPressed: () {
                    context.pushReplacement(AppRouter.uploadlecturespath);
                  },
                  width: 327.w,
                  height: 56.h,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.medium),
            ]),
          ),
        ]),
      ),
    );
  }
}
