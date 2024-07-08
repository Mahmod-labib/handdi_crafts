import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/features/customer/signup/widget/custom_checkbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';

import '../../../../core/theming/routes_manager.dart';
import '../../../customer/login/widget/button.dart';


class PackageDelivered extends StatefulWidget {
  const PackageDelivered({super.key});

  @override
  State<PackageDelivered> createState() => _PackageDeliveredState();
}

class _PackageDeliveredState extends State<PackageDelivered> {

  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;
  bool isChecked5=false;
  bool isChecked6=false;
  bool isChecked7=false;
  bool isChecked8=false;
  bool isChecked9=false;


  @override
  Widget build(BuildContext context) {
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
            context.pushReplacement(AppRouter.my_orderspath);
          },
        ),
        title: Text(
          "Package Delivered",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.circle_rounded , size: 5.r, color: ColorManager.olive1,),
               title: Text("Pickup 5 Nov at 4:45" , style: TextStyle(
                 fontSize: FontSize.s14,
                 fontWeight: FontWeightManager.regular,
                 color: ColorManager.black
               ),),
              subtitle:Text("24 El-Salam St, Zagazig 1, Al-Sharqia Governorate" , style: TextStyle(
                  fontSize: FontSize.s10,
                  fontWeight: FontWeightManager.thin,
                  color: ColorManager.grey2
              ),) ,
            ),
            ListTile(
              leading: Icon(Icons.circle_rounded , size: 5.r, color: ColorManager.olive1,),
              title: Text("Dropoff 5 Nov at 4:45" , style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeightManager.regular,
                  color: ColorManager.black
              ),),
              subtitle:Text("4 El-Glaa St, Zagazig 1, Al-Sharqia Governorate" , style: TextStyle(
                  fontSize: FontSize.s10,
                  fontWeight: FontWeightManager.thin,
                  color: ColorManager.grey2
              ),) ,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 43.w,right: 43.w ,top: 10.h,bottom: 10.h),
              child: Divider(color: ColorManager.white4,),
            ),

            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 16.w,bottom: 20.h),
              child: SizedBox(
                width: 339.w,
                height: 38.h,
                child: ListTile(
                  leading:Text("Delivery Charges" , style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.black
                  ),),
                  trailing:Text("EGP 30.00" , style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.thin,
                      color: ColorManager.grey2
                  ),),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 43.w,right: 43.w ),
              child: Divider(color: ColorManager.white4,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30.w),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("What is Your Rate?" , style: TextStyle(
                      fontSize: FontSize.s16,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.regular , ),),
                  ),

                  SizedBox(height: 16.h,),

                  RatingBar(
                    size: 20,
                    maxRating: 5,
                    initialRating: 0,
                    halfFilledColor: ColorManager.yellow,
                    direction: Axis.horizontal,
                    filledColor: ColorManager.yellow,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star, onRatingChanged: (double ) {  },),

                ],
              ),
            ),


            Padding(
              padding:  EdgeInsets.only(left: 43.w,right: 43.w ,),
              child: Divider(color: ColorManager.white4,),
            ),

            Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 28.h,),
                    Text("Ease of place order" , style: TextStyle(
                      fontSize: FontSize.s16,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.regular , ),),
                    SizedBox(height: 28.h,),
                    Text("Speed of delivery" , style: TextStyle(
                      fontSize: FontSize.s16,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.regular , ),),
                    SizedBox(height: 28.h,),
                    Text("Prodcut packaging" , style: TextStyle(
                      fontSize: FontSize.s16,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.regular , ),),
                  ],
                ),
                SizedBox(width: 16.w,),
                Column(
                  children: [Text("Dissatisfied" , style: TextStyle(
                    fontSize: FontSize.s12,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.regular , ),),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked7, onChanged: (x){
                      setState(() {
                        isChecked7=x;
                      });
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked8, onChanged: (y){
                      isChecked8=y;
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked9, onChanged: (z){
                      isChecked9=z;
                    },),

                  ],
                ),
                SizedBox(width: 16.w,),
                Column(
                  children: [Text("Satisfied" , style: TextStyle(
                    fontSize: FontSize.s12,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.regular , ),),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked1, onChanged: (bool x){
                      setState(() {
                        isChecked1=x;
                      });
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked2, onChanged: (bool y){
                      setState(() {
                        isChecked2=y;
                      });
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked3, onChanged: (bool z){
                      setState(() {
                        isChecked3=z;
                      });
                    },),

                  ],
                ),
                SizedBox(width: 16.w,),
                Column(
                  children: [Text("Very Satisfied" , style: TextStyle(
                    fontSize: FontSize.s12,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.regular , ),),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked4, onChanged: (x){
                      setState(() {
                        isChecked4=x;
                      });
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked5, onChanged: (y){
                      setState(() {
                        isChecked5=y;

                      });
                    },),
                    SizedBox(height: 28.h,),
                    CustomCheckbox(isChecked: isChecked6, onChanged: (z){
                      setState(() {
                        isChecked6=z;

                      });
                    },),

                  ],
                )
              ],
            ),
          SizedBox(height: 123.h,),

            CustomButton(
                text: "View Orders",
                onPressed: () {},
                height: 56.h,
                width: 327.w,


            ),
                SizedBox(height: 46.h,),

          ],
        ),
      ),


    );
  }
}
