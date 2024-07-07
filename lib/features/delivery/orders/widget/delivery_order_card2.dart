import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DeliveryOrderCard2 extends StatelessWidget {
  const DeliveryOrderCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 21.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 31.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/Ellipse.png"),
              ),
              SizedBox(
                width: 13.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohamed Hamza",
                    style: TextStyle(
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.medium,
                        color: ColorManager.black),
                  ),
                  Text(
                    "5 Nov",
                    style: TextStyle(
                        fontSize: FontSize.s10,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.grey2),
                  ),
                ],
              ),
              SizedBox(
                width: 29.w,
              ),
              CustomButton(
                  text: "Accepted ✓",
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  borderColor: ColorManager.olive2,
                  onPressed: () {},
                  width: 99.w,
                  height: 32.h,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeightManager.medium),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 9.w,
                      height: 9.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorManager.olive2,
                      ),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pickup",
                          style: TextStyle(
                            fontWeight: FontWeightManager.regular,
                            fontSize: FontSize.s14,
                            color: ColorManager.black,
                          ),
                        ),
                        Text(
                          "24 El-Salam St, Zagazig 1, Al-Sharqia",
                          style: TextStyle(
                            fontWeight: FontWeightManager.thin,
                            fontSize: FontSize.s10,
                            color: ColorManager.grey2,
                          ),
                        ),
                        Text(
                          "Governorate",
                          style: TextStyle(
                            fontWeight: FontWeightManager.thin,
                            fontSize: FontSize.s10,
                            color: ColorManager.grey2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 9.w,
                      height: 9.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorManager.olive2,
                      ),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dropoff",
                          style: TextStyle(
                            fontWeight: FontWeightManager.regular,
                            fontSize: FontSize.s14,
                            color: ColorManager.black,
                          ),
                        ),
                        Text(
                          "24 El-Salam St, Zagazig 1, Al-Sharqia",
                          style: TextStyle(
                            fontWeight: FontWeightManager.thin,
                            fontSize: FontSize.s10,
                            color: ColorManager.grey2,
                          ),
                        ),
                        Text(
                          "Governorate",
                          style: TextStyle(
                            fontWeight: FontWeightManager.thin,
                            fontSize: FontSize.s10,
                            color: ColorManager.grey2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Fee",
                style: TextStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular),
              ),
              Text(
                "EGP 30.00",
                style: TextStyle(
                    color: ColorManager.olive2,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.medium),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(onTap: () {

          },
            child: Row(
              children: [
                Text(
                  "Confirm Delivery",
                  style: TextStyle(color: ColorManager.black,
                      fontWeight: FontWeightManager.regular,
                      fontSize: FontSize.s16),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          Divider(
            color: ColorManager.white4,
          ),
        ],
      ),
    );
  }
}
