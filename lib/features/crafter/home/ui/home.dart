import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/home/widget/custom_made_by_section.dart';
import 'package:flutter_application_1/features/crafter/home/widget/custom_for_you_section.dart';
import 'package:flutter_application_1/features/crafter/home/widget/custom_scroll_cat.dart';

import 'package:flutter_application_1/features/crafter//home/widget/custom_trending_crafts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CrafterHome extends StatefulWidget {
  const CrafterHome({super.key});

  @override
  State<CrafterHome> createState() => _CrafterHomeState();
}

class _CrafterHomeState extends State<CrafterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white2,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 20.w, bottom: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Good Morning ",
                              style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.grey5,
                                  fontWeight: FontWeightManager.regular),
                            ),
                            Text(
                              "👋",
                              style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: Colors.amber,
                                  fontWeight: FontWeightManager.regular),
                            )
                          ],
                        ),
                        Text(
                          "Salma",
                          style: TextStyle(
                              fontSize: FontSize.s24,
                              color: ColorManager.grey5,
                              fontWeight: FontWeightManager.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(onTap: () {
                          showDialog(context: context,
                            builder: (context) =>
                                 SizedBox(width:176.w ,
                                   height: 197.h,
                                   child: AlertDialog(alignment: Alignment.topRight,content: Column(children: [
                                    SvgPicture.asset(
                                      "assets/images/heart.svg",
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/Bag.svg",
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/Bag.svg",
                                    ),
                                                                   ],),),
                                 ),);
                        },
                            child: SvgPicture.asset(
                              "assets/images/Plus.svg",
                            )),
                        SizedBox(
                          width: 15.w,
                        ),
                        InkWell(onTap: () {
                          context.pushReplacement(AppRouter.craftersearchpath);
                        },
                          child: SvgPicture.asset(
                            "assets/images/Search.svg",
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        SvgPicture.asset(
                          "assets/images/Bag.svg",
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, bottom: 31.h, right: 21.w),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 15.h, left: 16.w, bottom: 15.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/Document.svg",
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '1,773',
                                  style: TextStyle(
                                      fontSize: FontSize.s16,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.medium),
                                ),
                                Text(
                                  'Total Orders',
                                  style: TextStyle(
                                      fontSize: FontSize.s10,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.regular),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 15.h, left: 16.w, bottom: 15.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/Star.svg",
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontSize: FontSize.s16,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.medium),
                                ),
                                Text(
                                  'Total Rating',
                                  style: TextStyle(
                                      fontSize: FontSize.s10,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.regular),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 13.w, bottom: 14.h, right: 27.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Orders for today',
                          style: TextStyle(
                              fontSize: FontSize.s16,
                              color: ColorManager.black,
                              fontWeight: FontWeightManager.medium),
                        ),
                        Text(
                          '5 of 9 completed',
                          style: TextStyle(
                              fontSize: FontSize.s10,
                              color: ColorManager.grey2,
                              fontWeight: FontWeightManager.thin),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(
                          value: 0.5, // Adjust the progress here
                          backgroundColor: ColorManager.white3,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              ColorManager.olive2),
                        ),
                        Text(
                          '5', // The number in the center
                          style: TextStyle(
                            color: ColorManager.olive2,
                            fontSize: FontSize.s24,
                            fontWeight: FontWeightManager.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const CustomCategory(),

              const CustomForYouSection(),
              const CustomTrendingCrafters(),

              const CustomMadeByContainer(),
              // const CustomCraftProduct(),
              // const CustomShopContainer(),
            ],
          )
        ],
      ),
    );
  }
}
