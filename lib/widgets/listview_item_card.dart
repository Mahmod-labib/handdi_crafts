import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0.r),
    ),
      child: Column(children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/Rectangle 999.png",
              width: 334.w,
              height: 201.h,
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10.h, left: 10.w),
              child: Container(
                width: 60.w,
                height: 24.h,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE5D1B8),
                ),
                child:  Center(
                  child: Text("Offline",
                      style: TextStyle(
                          fontWeight: FontWeightManager.thin,
                          fontSize: FontSize.s10,
                          color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
         Padding(
          padding: EdgeInsets.only(
            left: 16.w,
          ),
          child: Column(
            children: [
              Text("One-to-one Sewing Workshop",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSize.s18,
                      color: ColorManager.olive2)),
              SizedBox(height: 11.h),
              Row(children: [
                Icon(Icons.calendar_month, color: ColorManager.olive2),
                SizedBox(
                  width: 14.w,
                ),
                Text("5 Nov",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.regular,
                    )),
              ]),
              SizedBox(height: 10.h),
              Row(children: [
                Icon(Iconsax.clock, color: ColorManager.olive2),
                SizedBox(
                  width: 14.w,
                ),
                Text("01:00 PM",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.regular,
                    )),
              ]),
              SizedBox(height: 10.h),
              Row(children: [
                Icon(Icons.location_on_outlined, color: ColorManager.olive2),
                SizedBox(
                  width: 14.w,
                ),
                Text("Zagazig",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.regular,
                    )),
              ]),
              SizedBox(height: 10.h),
              Row(children: [
                Icon(Iconsax.ticket, color: ColorManager.olive2),
                SizedBox(
                  width: 14.w,
                ),
                Text("EGP 99.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.regular,
                    )),
              ]),
              SizedBox(height: 11.h),
            ],
          ),
        ),
      ]),
    );
  }
}
