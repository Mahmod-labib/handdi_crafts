import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/routes_manager.dart';

class CrafterNotifications extends StatefulWidget {
  const CrafterNotifications({super.key});

  @override
  State<CrafterNotifications> createState() => _CrafterNotificationsState();
}

class _CrafterNotificationsState extends State<CrafterNotifications> {
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
            context.pushReplacement(AppRouter.customerhomepath);
          },
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),

      body: SizedBox(
        child: ListView.builder(
            itemCount: 5,

            itemBuilder: (context , index){
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(top: 8.h , bottom: 8.h , left: 33.w),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset("assets/images/Rectangle 92.png" ,width: 50.w ,height: 50.h,)),

                title: Text("Your order #214411 has been delivered" ,style: TextStyle(
                  color: ColorManager.black , fontWeight: FontWeightManager.medium ,
                  fontSize: FontSize.s13 ,
                ),),

                subtitle: Text("today",style: TextStyle(
                  color: ColorManager.grey4 , fontWeight: FontWeightManager.thin ,
                  fontSize: FontSize.s10 ,
                ),),

              ),
              Divider(color: ColorManager.white4,),
            ],
          );

        }),
      ),
    );
  }
}
