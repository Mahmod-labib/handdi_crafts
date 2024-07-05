import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/routes_manager.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

        actions: [
         Center(
           child: Padding(
             padding:  EdgeInsets.only(right: 24.w),
             child: Text("Edit",style: TextStyle(
               fontSize: FontSize.s15,
               color: ColorManager.olive2,
               fontWeight: FontWeightManager.regular,
             ),),
           ),
         )
        ],
      ),
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(
              left: 24.w ,
              bottom: 24.h,
              top: 29.h ,
            ),
            child: Row(
             children: [
               SvgPicture.asset("assets/images/Location-green.svg"),
               SizedBox(width: 4.w,),
               Container(
                 width: 70.w,
                 height: 22.h,
                decoration: BoxDecoration(
                  color: ColorManager.olive2,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                 child: Center(child: Text("Default",style: TextStyle(
                   fontSize: FontSize.s10,
                   color: ColorManager.white2,
                   fontWeight: FontWeightManager.regular,
                 ),)),
               ),
             ],
            ),
          ),
          Divider(color: ColorManager.white4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Name",style: TextStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.medium,
                ),),
                SizedBox(height: 25.h,),
                Text("Address",style: TextStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.medium,
                ),),
                SizedBox(height: 25.h,),
                Text("Mobile Number",style: TextStyle(
                  fontSize: FontSize.s16,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.medium,
                ),),

              ],
            ),
            Column(
           children: [
             Column(
               children: [
                 SizedBox(height: 12.h,),
                 Text("Nada Soliman",style: TextStyle(
                   fontSize: FontSize.s14,
                   color: ColorManager.black,
                   fontWeight: FontWeightManager.thin,
                 ),),
                 Divider(color: ColorManager.white4,),
                 Column(
                   children: [
                     Text("24 El-Salam St, Zagazig 1,\n Al-Sharqia Governorate",style: TextStyle(
                       fontSize: FontSize.s14,
                       color: ColorManager.black,
                       fontWeight: FontWeightManager.thin,
                     ),),
                     Divider(color: ColorManager.white4,),
                     SizedBox(height: 6.h,),
                     Column(
                       children: [
                         Text("+20 1012345678",style: TextStyle(
                           fontSize: FontSize.s14,
                           color: ColorManager.black,
                           fontWeight: FontWeightManager.thin,
                         ),),
                       ],
                     ),

                     Divider(color: ColorManager.white4,),

                   ],
                 ),

               ],
             ),

           ],
            ),
          ],
        ),
Divider(color: ColorManager.white4,),
        ],
      ),
    );
  }
}
/*
 Row(
            children: [
              Column(
                children: [
                  Text("Name",style: TextStyle(
                    fontSize: FontSize.s16,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.medium,
                  ),),
                ],
              ),
              SizedBox(width: 95.w,),
              Column(
                children: [
                  Text("Nada Soliman",style: TextStyle(
                    fontSize: FontSize.s14,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.thin,
                  ),),
                  Divider(color: ColorManager.white4,),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text("Address",style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.black,
                fontWeight: FontWeightManager.medium,
              ),),
              SizedBox(width: 95.w,),
              Column(
                children: [
                  Text("24 El-Salam St, Zagazig 1,\n Al-Sharqia Governorate",style: TextStyle(
                    fontSize: FontSize.s14,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.thin,
                  ),),
                  Divider(color: ColorManager.white4,),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text("Mobile Number",style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.black,
                fontWeight: FontWeightManager.medium,
              ),),
              SizedBox(width: 95.w,),
              Column(
                children: [
                  Text("+20 1012345678",style: TextStyle(
                    fontSize: FontSize.s14,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.thin,
                  ),),
                ],
              ),
              Divider(color: ColorManager.white4,),
            ],
          ),

 */