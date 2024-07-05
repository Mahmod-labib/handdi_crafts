import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/crafter/home/widget/button.dart';





import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/routes_manager.dart';

class FirstPublishProduct extends StatefulWidget {
  const FirstPublishProduct({super.key});

  @override
  State<FirstPublishProduct> createState() => _FirstPublishProductState();
}

class _FirstPublishProductState extends State<FirstPublishProduct> {
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
          onPressed: () {    context.pushReplacement(AppRouter.publishproducts2path);},
        ),
        title: Text(
          "Your First Product!",
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
              "Please upload Your ID",
              style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.black,
                fontWeight: FontWeightManager.medium,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(28),
            margin: EdgeInsets.only(left: 20.w, top: 12.h,),
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: ColorManager.white2,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: ColorManager.olive2, width: 1.w)),
            child: SvgPicture.asset(
              width: 24.w,
              height: 24.h,
              "assets/images/Camera2.svg",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h, left: 24.w,right: 24.w),
            padding: EdgeInsets.only(top: 16.h, left: 16.w,right: 24.w,bottom: 16.h),
            decoration: BoxDecoration(
              color: ColorManager.white5,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: ColorManager.white,
                width: 1.0,
              ),
            ),
            width: 327.w,
            height: 80.h,
            child: Row(
              children: [
                SvgPicture.asset(
                  width: 24.w,
                  height: 24.h,
                  "assets/images/vscode-icons_file-type-pdf2.svg",
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  child: Text(
                    "Download and fill out this\njob contact",
                    style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.grey2,
                    ),
                  ),
                ),
                SizedBox(width: 32.w,),
                SvgPicture.asset(
                  width: 20.w,
                  height: 20.h,
                  "assets/images/solar_download-outline.svg",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h, left: 24.w,right: 24.w),
            padding: EdgeInsets.only(top: 16.h, left: 16.w,right: 24.w,bottom: 16.h),
            decoration: BoxDecoration(
              color: ColorManager.white5,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: ColorManager.white,
                width: 1.0,
              ),
            ),
            width: 327.w,
            height: 80.h,
            child: Row(
              children: [
                SvgPicture.asset(
                  width: 24.w,
                  height: 24.h,
                  "assets/images/vscode-icons_file-type-pdf2.svg",
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  child: Text(
                    "Upload the contract\nincluding your signature",
                    style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.grey2,
                    ),
                  ),
                ),
                SizedBox(width: 32.w,),
                SvgPicture.asset(
                  width: 20.w,
                  height: 20.h,
                  "assets/images/solar_upload-outline.svg",
                ),
              ],
            ),
          ),
          SizedBox(height: 100.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: CustomButton(
                text: "Publish",
                onPressed: () {},
                width: 327.w,
                height: 56.h,
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.medium),
          ),

            ]),


    );
  }
}
