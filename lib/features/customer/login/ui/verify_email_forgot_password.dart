

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class CustomerVerifiyEmailForgotPassword extends StatefulWidget {
  const CustomerVerifiyEmailForgotPassword({super.key});

  @override
  State<CustomerVerifiyEmailForgotPassword> createState() => _CustomerVerifiyEmailForgotPasswordState();
}

class _CustomerVerifiyEmailForgotPasswordState extends State<CustomerVerifiyEmailForgotPassword> {
  bool _onEditing = true;
  String? _code;

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
            context.pushReplacement(AppRouter.customerforgotpasswordpath);
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0.r),
          child: Column(
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Verification Code ",
                    style: TextStyle(
                        fontSize: FontSize.s24,
                        fontWeight: FontWeightManager.medium,
                        color: ColorManager.black),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Please enter code that we have sent to your email salma*******@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeightManager.thin,
                      fontSize: FontSize.s14,
                      color: ColorManager.grey4,
                    ),
                  ),

                ],
              ),

              SizedBox(height: 32.h,),
              VerificationCode(
                keyboardType: TextInputType.number,
                underlineColor: ColorManager.grey,
                cursorColor: ColorManager.olive2,
                fullBorder: true,
                textStyle:  TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.bold,
                ),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
             /* CustomButton(
                text: 'Verify',
                width: 327,
                height: 56,
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => Container(
                    width: 401,
                    height: 327,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AlertDialog(
                          title: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                  color: Color(0xffFAF8ED),
                                  shape: BoxShape.circle),
                              child: Image.asset(
                                  "assets/images/img_icoutlinecheck.png")),
                          content: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Success",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff101623)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "your Account has been",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffA1A8B0),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Text(
                                "Successfully registered",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffA1A8B0),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomButton(
                                text: ("Go to home"),
                                onPressed: () {
                                  context.pushReplacement("/customerHomePage");
                                },
                                width: 183,
                                height: 56,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              */
              SizedBox(height: 40.h,),
              Container(
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
                      context.pushReplacement(AppRouter.crafterresetpasswordpath);

                    },


                  child:  Text("Verifiy",
                      style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
                ),
              ),

              SizedBox(height: 24.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive the code?",
                    style: TextStyle(
                      color: ColorManager.grey4,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  InkWell(
                    onTap:()=> context.pushReplacement(AppRouter.customerverifiyemailforgotpasswordpath),
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        color: ColorManager.olive2,
                        fontSize: FontSize.s14,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
