import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCraftProduct extends StatelessWidget {
  const CustomCraftProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 6.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sustainable Bamboo Craft",
                  style: TextStyle(fontWeight: FontWeightManager.medium, fontSize: FontSize.s16, color: ColorManager.black),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20.w , right: 7.w , bottom: 20.h) ,
          child: Row(
            children: [
              Container(
                width: 157.w,
                height: 211.h,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
                ),
                child:   Column(
                  children: [
                    Image(image: AssetImage("assets/images/Rectangle1008.png") , width: 157.w,height: 152.h,),
                    SizedBox(height: 8.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bamboo Pendant " ,style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                        ),),
                        Text("Lamp" ,style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                        ),),
                        SizedBox(height: 3.h,),
                        Text("EGP 430.00" ,style: TextStyle(
                          color: ColorManager.olive2,
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                        ) ,)
                      ],
                    )
                  ],
                ),
              ),
               SizedBox(width: 17.w,),
              Container(
                width: 157.w,
                height: 211.h,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r))
                ),
                child:   Column(
                  children: [
                    Image(image: AssetImage("assets/images/Rectangle1009.png") , width: 157.w,height: 152.h,),
                    SizedBox(height: 8.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bamboo Pendant " ,style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                        ),),
                        Text("Lamp" ,style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSize.s10,
                          fontWeight: FontWeightManager.regular,
                        ),),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("EGP 430.00" ,style: TextStyle(
                                color: ColorManager.grey4,
                                fontSize: FontSize.s10,
                                fontWeight: FontWeightManager.regular,
                                decoration: TextDecoration.lineThrough
                            ) ,),

                            Text("EGP 350.00" ,style: TextStyle(
                              color: ColorManager.olive2,
                              fontSize: FontSize.s10,
                              fontWeight: FontWeightManager.regular,
                            ) ,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
