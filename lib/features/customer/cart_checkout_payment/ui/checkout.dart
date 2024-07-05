import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/features/customer/signup/widget/custom_checkbox.dart';
import 'package:flutter_application_1/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../crafter_profile_and_reviews/widget/custom_button.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> quantities = [1, 1, 1];
    return  Scaffold(
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
            context.pushReplacement(AppRouter.cartpath);
          },
        ),
        title: Text(
          "Checkout",
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
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20.r),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Add Coupon",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.medium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextFormField(
                    hintText: "Apply Coupon",
                    contentPadding: EdgeInsets.all(10.r),
                    width: 230.w,
                    height: 46.h,
                    
                    borderDecoration: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide(color: ColorManager.grey2)),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomButton(
                    text: 'Enter',
                    fun: () {  },
                    height: 46.h, width: 89.w, btncolor: ColorManager.olive2,
                    textcolor: ColorManager.white2,),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "total Items (${quantities.length} )",
                    style: TextStyle(
                      color: ColorManager.grey4,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.thin,
                    ),
                  ),
                  Text(
                    "EGP ${quantities.length * 250}.00",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 17.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Fee",
                    style: TextStyle(
                      color: ColorManager.grey4,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.thin,
                    ),
                  ),
                  Text(
                    "EGP 30.00",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount",
                    style: TextStyle(
                      color: ColorManager.grey4,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.thin,
                    ),
                  ),
                  Text(
                    "-EGP 212.00",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Divider(color: ColorManager.grey2),
              SizedBox(height: 11.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      color: ColorManager.grey4,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.thin,
                    ),
                  ),
                  Text(
                    "EGP ${quantities.length * 250 + 30-212}.00",
                    style: TextStyle(
                      color: ColorManager.black,
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              ListTile(
                leading: Text(
                  "Default",
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                  ),

                ),
                trailing: CustomCheckbox(isChecked: false, onChanged: (bool ) {  },),
              ),
              SizedBox(height: 12.h,),
              ListTile(
                leading: Text(
                  "Add New Address",
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                  ),

                ),
                trailing: CustomCheckbox(isChecked: true, onChanged: (bool ) {  },),
              ),
              SizedBox(height: 12.h,),
              Container(
                width: 336.w,
                height: 350.h,
                decoration: BoxDecoration(
                    color: ColorManager.white2,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.grey2.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )]),
                child: Padding(
                  padding:  EdgeInsets.only(bottom: 55.h ,top: 20.h),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 308.w,
                        height: 52.h,
                        hintText: "Enter your governorate",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 308.w,
                        height: 52.h,
                        hintText: "Enter your city",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      SizedBox(height: 15.h,),

                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 308.w,
                        height: 52.h,
                        hintText: "Enter your street",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 308.w,
                        height: 52.h,
                        hintText: "Enter your building no.",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),

                    ],

                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 55.h),
                child: CustomButton(
                  text: 'Checkout',
                  fun: () {
                    context.pushReplacement(AppRouter.paymentpath);
                  },
                  height: 56.h, width: 327.w, btncolor: ColorManager.olive2,
                  textcolor: ColorManager.white2,),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
