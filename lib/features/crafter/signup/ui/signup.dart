import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_checkbox.dart';
import '../../../../widgets/custom_text_field.dart';

class CrafterSignUp extends StatefulWidget {
  const CrafterSignUp({super.key});

  @override
  State<CrafterSignUp> createState() => _CustomerSignUpState();
}

class _CustomerSignUpState extends State<CrafterSignUp> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon:  Icon(Icons.arrow_back_ios , color: ColorManager.black2,), onPressed: () {
            context.pushReplacement(AppRouter.customerloginPath);
          },
          ),
          backgroundColor: Colors.white,
          title:  Text(
            "SignUp",
            style: TextStyle(
              color: ColorManager.black2,
              fontSize: FontSize.s18,
              fontWeight: FontWeightManager.medium,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
            children:[ Padding(
              padding:  EdgeInsets.all(15.r),
              child: Column(
                children: [

                  CustomTextFormField(
                    prefixIcon:  Icon(
                        Icons.person,
                        color:ColorManager.grey2              ),
                    controller: TextEditingController(),
                    hintText: '  Enter your first name ',
                    obscureText: false,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h,),
                  CustomTextFormField(
                    prefixIcon:  Icon(
                        Icons.person,
                        color:ColorManager.grey2              ),
                    controller: TextEditingController(),
                    hintText: '  Enter your second name ',
                    obscureText: false,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h,),

                  SizedBox(
                    height: 56.h,
                    width: 327.w,
                    // Set the desired height here
                    child: IntlPhoneField(

                      initialCountryCode: "EG",
                      cursorColor: ColorManager.grey2,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding:  EdgeInsets.only(top: 16.r , bottom:16.r , right: 16.r ),
                        fillColor: ColorManager.white,
                        hintText: "Enter your number",
                        hintStyle:  TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.regular,
                          color: ColorManager.grey2,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide:  BorderSide(
                            color: ColorManager.black2,
                            width: 1.r,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide:  BorderSide(
                            color: ColorManager.white,
                            width: 1.r,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide:  BorderSide(
                            color: ColorManager.grey4,
                            width: 1,
                          ),
                        ),
                        // Remove the counterText
                        counterText: "",
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  CustomTextFormField(
                    prefixIcon:  Icon(
                        Icons.car_rental,
                        color:ColorManager.grey2      ),
                    controller: TextEditingController(),
                    hintText: '  Enter your car model ',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 16.h,),
                  CustomTextFormField(
                    prefixIcon:  Icon(
                        Icons.numbers_rounded,
                        color:ColorManager.grey2      ),
                    controller: TextEditingController(),
                    hintText: '  Enter your plate number ',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 16.h,),
                  CustomTextFormField(
                    prefixIcon:  Icon(
                        Icons.email,
                        color:ColorManager.grey2      ),
                    controller: TextEditingController(),
                    hintText: '  Enter your email ',
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h,),

                  CustomTextFormField(
                    prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                    suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                    controller: TextEditingController(),
                    hintText: '  Enter Your Password ',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h,),

                  CustomTextFormField(
                    prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                    suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                    controller: TextEditingController(),
                    hintText: '  Confirm Your Password ',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCheckbox(isChecked: isChecked, onChanged: (value) {
                        setState(() {
                          isChecked=value;
                        });
                      },borderColor: ColorManager.grey3),
                      SizedBox(width: 7.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "I agree to the Handicrafts ",
                                style: TextStyle(
                                  color: ColorManager.black2,
                                  fontSize: FontSize.s13,
                                  fontWeight: FontWeightManager.thin,
                                ),
                              ),
                              Text(
                                "Terms of Service",
                                style: TextStyle(
                                  color: ColorManager.olive2,
                                  fontSize: FontSize.s13,
                                  fontWeight: FontWeightManager.thin,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "and",
                                style: TextStyle(
                                  color: ColorManager.black2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                " Privacy Policy",
                                style: TextStyle(
                                  color: ColorManager.olive2,
                                  fontSize: FontSize.s13,
                                  fontWeight: FontWeightManager.thin,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 36.h,),

                  Container(
                    // alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color:  ColorManager.olive2,
                        borderRadius: BorderRadiusDirectional.circular(32.r)),
                    width: 327.w,
                    height: 56.h,

                    child: MaterialButton(
                      onPressed: () {
                        //todo while navigate
                        context.pushReplacement("/verify");
                      },
                      child:  Text("SignUp",
                          style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
                    ),
                  ),
                  SizedBox(height: 24.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: ColorManager.black2,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      InkWell(
                        onTap: () {
                          context.pushReplacement(AppRouter.crafterloginPath);
                        },
                        child:  Text(
                          "Sign in",
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
            ]));
  }
}