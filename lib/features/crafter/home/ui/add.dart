import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';



class Add extends StatelessWidget {
  const Add({super.key});

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
          onPressed: () {},
        ),


      ),
      body: Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(   onTap: () {
            context.pushReplacement(AppRouter.publishcoursepath);
          },
            child: Container(
              height: 170.h,
              width: 200.w,
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
                  SvgPicture.asset("assets/images/Edit Square.svg" ,width:56.w ,height: 56.h,),
                  SizedBox(height: 16.h,),
                  Text(
                    "Publish Course",
                    style: TextStyle(
                      fontSize: FontSize.s18,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60.h,),
          InkWell(   onTap: () {
            context.pushReplacement(AppRouter.uploadlecturespath);
          },
            child: Container(
              height: 170.h,
              width: 200.w,
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
                  SvgPicture.asset("assets/images/fluent_video-add-20-regular.svg" ,width:56.w ,height: 56.h,),
                  SizedBox(height: 16.h,),
                  Text(
                    "Upload Lectures",
                    style: TextStyle(
                      fontSize: FontSize.s18,
                      color: ColorManager.black,
                      fontWeight: FontWeightManager.medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
