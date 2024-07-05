import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/crafter/login/widget/custom_forgot_pasword_via.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class CrafterForgotPassword extends StatefulWidget {
  const CrafterForgotPassword({super.key});

  @override
  State<CrafterForgotPassword> createState() => _CrafterForgotPasswordState();
}

class _CrafterForgotPasswordState extends State<CrafterForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white2,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
          ),
          onPressed: () {
            context.pushReplacement(AppRouter.crafterloginPath);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Forgot Password",
          style: TextStyle(
            color: ColorManager.black2,
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0.r),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 11.r , bottom: 31.r , right: 27.r),
              child: Text("Please select option to send code to reset password" ,style: TextStyle(
                fontSize: FontSize.s16,
                color: ColorManager.black,
                fontWeight: FontWeightManager.medium,
              ),),
            ),
             CustomButtonForgotPassword(
              title:"Send code via email",
              leadingIconPath: "assets/images/Message.svg",
              trailingWidget: SvgPicture.asset("assets/images/Vector (2).svg",
                width: 17.w,
                height: 13.h,

              ),
            ),
            SizedBox(height: 20.h,),
             CustomButtonForgotPassword(
              title:"Send code via SMS",
              leadingIconPath: "assets/images/Stroke-1.svg",
               trailingWidget: null,
            ),
            SizedBox(height: 90.h,),
            Padding(
              padding:  EdgeInsets.only(left: 4.r , right: 4.r),
              child: Container(
                // alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color:  ColorManager.olive2,
                    borderRadius: BorderRadiusDirectional.circular(32.r)),
                width: 327.w,
                height: 56.h,

                child: MaterialButton(
                  onPressed: () {

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      context.pushReplacement(AppRouter.crafterverifiyemailforgotpasswordpath);

                    },

                  child:  Text("Continue",
                      style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
