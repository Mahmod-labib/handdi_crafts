import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_field.dart';

class CrafterLoginScreen extends StatefulWidget {
  const CrafterLoginScreen({super.key});

  @override
  State<CrafterLoginScreen> createState() => _CrafterLoginScreenState();
}

class _CrafterLoginScreenState extends State<CrafterLoginScreen> {

  final _formKey = GlobalKey<FormState>();


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
            context.pushReplacement(AppRouter.crafterintropagepath);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(
            color: ColorManager.black2,
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter  Valid Name';
                    }
                    return null;
                  },
                  prefixIcon: Icon(
                    Icons.email,
                    color: ColorManager.grey2,
                  ),
                  controller: TextEditingController(),
                  hintText: '  Enter Your Email ',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Valid Password';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                  suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                  controller: TextEditingController(),
                  hintText: '  Enter Your Password ',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        context.pushReplacement(AppRouter.crafterforgotpasswordpath);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeightManager.thin,
                          fontSize: FontSize.s14,
                          color: ColorManager.olive2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.h,
                ),
                Container(
                  // alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color:  ColorManager.olive2,
                      borderRadius: BorderRadiusDirectional.circular(32.r)),
                  width: 327.w,
                  height: 56.h,

                  child: MaterialButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),

                        );

                   context.pushReplacement(AppRouter.crafterhomepath);
                      }
                    },
                    child:  Text("Login",
                        style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
                  ),
                ),

                // CustomButton(text: "login", onPressed: (){}, width: 100, height: 10),
               /* CustomButton(
                  text: 'Login',
                  width: 327.w,
                  height: 56.h,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Container(
                      width: 327.h,
                      height: 401.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AlertDialog(
                            title: Container(
                                width: 60.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: ColorManager.white3,
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                    "assets/images/img_icoutlinecheck.png")),
                            content: Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontSize: FontSize.s20,
                                      fontWeight: FontWeightManager.bold,
                                      color: ColorManager.black),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "you login successfully",
                                  style: TextStyle(
                                    fontSize: FontSize.s16,
                                    color: ColorManager.grey2,
                                    fontWeight: FontWeightManager.thin,
                                  ),
                                ),
                                Text(
                                  "into Handicrafts app",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ColorManager.grey2,
                                    fontWeight: FontWeightManager.thin,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomButton(
                                  text: ("Go to home"),
                                  onPressed: () {
                                    //todo while navigate to home
                                    context.pushReplacement("/landing");
                                  },
                                  width: 183.w,
                                  height: 56.h,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),*/
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account ?  ",
                      style: TextStyle(
                        fontWeight: FontWeightManager.thin,
                        fontSize: FontSize.s15,
                        color: ColorManager.grey4,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.pushReplacement(AppRouter.craftersignupPath);
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontWeight: FontWeightManager.thin,
                            fontSize: FontSize.s15,
                            color: ColorManager.olive2),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(children: <Widget>[
                  const Expanded(child: Divider()),
                  Text(
                    "  OR  ",
                    style: TextStyle(
                      fontWeight: FontWeightManager.regular,
                      fontSize: FontSize.s16,
                      color: ColorManager.grey4,
                    ),
                  ),
                  const Expanded(child: Divider()),
                ]),
                SizedBox(
                  height: 15.h,
                ),
                CustomButtonOutlined(
                  label: "Sign in with Google ",
                  leftIcon: SvgPicture.asset('assets/images/img_google.svg'),
                ),
                CustomButtonOutlined(
                  label: " Sign in with Facebook ",
                  leftIcon: SvgPicture.asset('assets/images/img_facebook.svg'),
                ),
                CustomButtonOutlined(
                  label: "Sign in with Apple",
                  leftIcon: SvgPicture.asset("assets/images/img_user.svg"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
