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

class PublishProducts1 extends StatefulWidget {
  PublishProducts1({super.key});

  @override
  State<PublishProducts1> createState() => _PublishProducts1State();
}

class _PublishProducts1State extends State<PublishProducts1> {
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
          onPressed: () {    context.pushReplacement(AppRouter.crafterhomepath);},
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
      body: Column(
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
          Container(
            padding: EdgeInsets.all(28),
            margin: EdgeInsets.only(left: 20.w, top: 12.h, bottom: 24.h),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(children: [
              CustomDropDownField(hintText: "Product type",),
              SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid Name';
                  }
                  return null;
                },
                controller: TextEditingController(),
                hintText: 'Product name',
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
                hintText: 'Product price',
                obscureText: false,
                textInputType: TextInputType.number,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomDropDownField(hintText: "Percentage discount",),
              SizedBox(height: 30.h,),
              CustomButton(

                  text: "Next", onPressed: () {
                context.pushReplacement(AppRouter.publishproducts2path);
              },
                  width: 327.w,
                  height: 56.h,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.medium),

            ]),


          ),
        ],
      ),
    );
  }
}
