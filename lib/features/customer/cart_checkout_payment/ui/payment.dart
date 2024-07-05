import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/signup/widget/custom_checkbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../crafter/My Customers Reviews/widget/button.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    bool isChecked=false;

    return Scaffold(      backgroundColor: Colors.white,


      appBar: AppBar(
      backgroundColor: Colors.white,

      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: ColorManager.black2,
          size: 24.r,
        ),
        onPressed: () {
          context.pushReplacement(AppRouter.coursebookingpath);
        },
      ),
      title: Text(
        "Payment",
        style: TextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium,
        ),
      ),
      actions: [
        SvgPicture.asset("assets/images/notification.svg" ,),
        SizedBox(width: 15.w,),
        SvgPicture.asset("assets/images/heart.svg"),
        SizedBox(width: 15.w),
        SvgPicture.asset("assets/images/Bag.svg"),
        SizedBox(width: 18.w),
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[ Padding(
              padding:  EdgeInsets.only(left: 24.w , bottom: 16.h , top: 24.h),
              child: Text("Select Payment Method",style: TextStyle(fontSize: FontSize.s16 ,
        fontWeight: FontWeightManager.medium , color: ColorManager.black,
      ),),
            ),]
          ),

          Container(
            width: 335.w,
            height: 49.h,
            decoration: BoxDecoration(
              color: ColorManager.white2,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
          BoxShadow(
          color: ColorManager.grey2.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(1, 1), // changes position of shadow
      )]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.all(12.0.r),
                  child: Text("Visa",style: TextStyle(fontSize: FontSize.s16 ,
                    fontWeight: FontWeightManager.regular , color: ColorManager.black,
                  ),),
                ),
            /*  Padding(
                padding:  EdgeInsets.only(right: 24.w),
                child: SvgPicture.asset("assets/images/visa_logo.svg" , width: 50.w , height: 16.5.h,),
              ),
              */
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            width: 336.w,
            height: 240.h,
            decoration: BoxDecoration(
                color: ColorManager.white2,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey2.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  )]),
            child: Padding(
              padding:  EdgeInsets.all(15.0.r),
              child: Column(
                children: [
                  CustomTextFormField(
                    contentPadding: EdgeInsets.all(15.r),
                    width: 308.w,
                    height: 50.h,
                    hintText: "Cardholder Name",
                    hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                    fontSize: FontSize.s14,
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    contentPadding: EdgeInsets.all(15.r),
                    width: 308.w,
                    height: 50.h,
                    hintText: "Card Number",
                    hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  SizedBox(height: 15.h,),

                  Row(
                    children: [
                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 164.w,
                        height: 50.h,
                        hintText: "Expiry Date (MM/YY)",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      SizedBox(width: 15.w,),
                      CustomTextFormField(
                        contentPadding: EdgeInsets.all(15.r),
                        width: 118.w,
                        height: 50.h,
                        hintText: "cvv",
                        hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                          fontSize: FontSize.s14,
                        ),
                      ),

                    ],
                  ),

                ],

              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(15.0.r),
            child: Row(
              children: [
                CustomCheckbox(isChecked: isChecked, onChanged:(x){
               setState(() {
                 x=isChecked;
               });
                }),
                SizedBox(width: 8.w,),
                Text("Save this payment card",style: TextStyle(fontSize: FontSize.s13 ,
                  fontWeight: FontWeightManager.thin , color: ColorManager.grey2,
                ),),                      ],
            ),
          ),
          Container(
            width: 335.w,
            height: 49.h,
            decoration: BoxDecoration(
                color: ColorManager.white2,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey2.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  )]),
            child: Padding(
              padding:  EdgeInsets.only(right: 12.w , left: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Master Card",style: TextStyle(fontSize: FontSize.s16 ,
                    fontWeight: FontWeightManager.regular , color: ColorManager.black,
                  ),),
                 // SvgPicture.asset("assets/images/master_card_symbol.svg" , width: 50.w , height: 16.5.h,),

                ],
              ),
            ),
          ),
          SizedBox(height: 16.h,),
          Container(
            width: 335.w,
            height: 49.h,
            decoration: BoxDecoration(
                color: ColorManager.white2,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey2.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  )]),

            child: Center(
              child: Padding(
                padding:  EdgeInsets.only(left: 24.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cash on Delivery",style: TextStyle(fontSize: FontSize.s16 ,
                      fontWeight: FontWeightManager.regular , color: ColorManager.black,
                    ),),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 76.h , bottom: 45.h , left: 24.w , right: 24.w),
            child: CustomButton(text: 'Pay Now', onPressed: () {
              context.pushReplacement(AppRouter.paymentsuccesspath);

            }, height: 56.h,width: 327.w,
              backgroundColor: ColorManager.olive2, textColor: ColorManager.white2, fontSize: FontSize.s16 ,
                fontWeight: FontWeightManager.medium,

            ),
          ),

        ],
      ),
    ),
    );
  }


}
