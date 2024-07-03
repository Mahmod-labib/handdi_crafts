import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/home/widget/dashed_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
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
            context.pushReplacement(AppRouter.profilepath);
          },
        ),
        title: Text(
          "Coupons",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/notification.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 20.w , right: 20.w , top: 30.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("Best offers for you!" , style: TextStyle(
                color: ColorManager.black ,
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.medium,
              ),),
            ),
         SizedBox(height: 12.h,),
            Expanded(
              child: ListView.builder(
                  itemCount:5,
                  itemBuilder: (context ,index){
                return Column(
                  children: [
                    Container(
                      width: 326.w,
                      height: 141.h,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: ColorManager.white2,
                        border: Border.all(
                          color: ColorManager.grey6,
                          width: 2.w,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 29.w , top: 16.h , right: 27.w ,bottom: 16.h),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 20.r,
                                      child: Image.asset("assets/images/ccc.jpg"),
                                    ),
                                    SizedBox(height: 5.h,),
                                    Text("Coupon by crafter:" ,style: TextStyle(
                                      fontSize: FontSize.s6,
                                      color: ColorManager.black,
                                      fontWeight: FontWeightManager.regular
                                    ),),
                                    SizedBox(height: 3.h,),
                                    Text("Salma Mostafa",style: TextStyle(
                                        fontSize: FontSize.s8,
                                        color: ColorManager.black,
                                        fontWeight: FontWeightManager.medium
                                    ),),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 1.w,
                                    height: 60.h,
                                    color: ColorManager.grey2,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 12.h , bottom: 12.h ,left: 16.w,right: 29.w),
                                child: Column(
                                 children: [
                                   Text("WELCOME10",style: TextStyle(
                                       fontSize: FontSize.s14,
                                       color: ColorManager.black,
                                       fontWeight: FontWeightManager.regular
                                   ),),
                                   SizedBox(height: 10.h,),
                                   Text("Add items worth EGP200 more to unlock",style: TextStyle(
                                       fontSize: FontSize.s9,
                                       color: ColorManager.grey4,
                                       fontWeight: FontWeightManager.regular
                                   ),),
                                   SizedBox(height: 10.h,),
                                   Row(
                                     children: [
                                       SvgPicture.asset("assets/images/Discount.svg"),
                                       Text("Get 40% OFF",style: TextStyle(
                                           fontSize: FontSize.s14,
                                           color: ColorManager.black,
                                           fontWeight: FontWeightManager.regular
                                       ),),
                                     ],
                                   )
                                 ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(

                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10.r),
                                    bottomLeft: Radius.circular(10.r),


                                  ),
                                  color: ColorManager.grey7,
                                ),
                                width: 322.w,
                                height: 44.h,
                                child: Center(
                                  child: Text("Copy Code",style: TextStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.olive2,
                                      fontWeight: FontWeightManager.regular
                                  ), ),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 20.h,),
                  ],
                );

              }
              ),

            ),
          ],
        ),
      ),
    );
  }
}
