import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DeliveryHome extends StatefulWidget {
  const DeliveryHome({super.key});

  @override
  State<DeliveryHome> createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white2,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h, left: 20.w, bottom: 30.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
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
                        "Ahmed",
                        style: TextStyle(
                            fontSize: FontSize.s24,
                            color: ColorManager.grey5,
                            fontWeight: FontWeightManager.bold),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Wrap(spacing: 20.w,runSpacing: 20.h,
            children: [
              Container(
                height: 190.h,
                width: 157.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/Paper.svg",
                      width: 56.w,
                      height: 56.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                        fontSize: FontSize.s18,
                        color: ColorManager.black,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 190.h,
                width: 157.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/material-symbols-light_deployed-code-history-sharp.svg",
                      width: 56.w,
                      height: 56.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "History",
                      style: TextStyle(
                        fontSize: FontSize.s18,
                        color: ColorManager.black,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 190.h,
                width: 157.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/Profile.svg",
                      width: 56.w,
                      height: 56.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: FontSize.s18,
                        color: ColorManager.black,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 190.h,
                width: 157.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/Chat.svg",
                      width: 56.w,
                      height: 56.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: FontSize.s18,
                        color: ColorManager.black,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),




        ],
      ),
    );
  }
}
