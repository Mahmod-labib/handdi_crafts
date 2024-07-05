import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/signup/data/models/user_model.dart';
import 'package:flutter_application_1/features/customer/signup/data/repositories/auth_repository.dart';
import 'package:flutter_application_1/features/customer/signup/data/services/api_services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart'; // Import Dio package

import '../../../../widgets/custom_checkbox.dart';
import '../../../../widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';

class CustomerSignUp extends StatefulWidget {
  const CustomerSignUp({super.key});

  @override
  State<CustomerSignUp> createState() => _CustomerSignUpState();
}

class _CustomerSignUpState extends State<CustomerSignUp> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _signupRepository = SignupRepository(SignupApiService());

  String? _errorMessage;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignup() async {
    if (_formKey.currentState!.validate() && isChecked) {
      final signupModel = SignupModel(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        phoneNumber: _phoneNumberController.text,
        email: _emailController.text,
        password: _passwordController.text,
        password2: _confirmPasswordController.text,
      );

      try {
        debugPrint(_phoneNumberController.text);
        await _signupRepository.signup(signupModel);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Signup successful')),
        );
        context.pushReplacement(AppRouter.customerverifiyemailsignuppath);
      } on DioError catch (e) {
        setState(() {
          if (e.response != null) {
            if (e.response!.statusCode == 400) {
              _errorMessage = 'Signup failed: ${e.response!.data['error'] ?? 'Invalid input'}';
            } else {
              _errorMessage = 'Signup failed: ${e.response!.statusMessage}';
            }
          } else {
            _errorMessage = 'Signup failed: ${e.message}';
            debugPrint(e.message);
          }
        });
      } catch (e) {
        setState(() {
          _errorMessage = 'Signup failed: An unexpected error occurred';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ColorManager.black2),
          onPressed: () {
            context.pushReplacement(AppRouter.customerloginPath);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
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
        children: [
          Padding(
            padding: EdgeInsets.all(15.r),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  if (_errorMessage != null)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        _errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Name';
                      }
                      return null;
                    },
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorManager.grey2,
                    ),
                    controller: _firstNameController,
                    hintText: 'Enter your first name',
                    obscureText: false,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Name';
                      }
                      return null;
                    },
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorManager.grey2,
                    ),
                    controller: _lastNameController,
                    hintText: 'Enter your second name',
                    obscureText: false,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Number is not valid try start with 011,015,010,012';
                      }
                      return null;
                    },
                    prefixIcon: Icon(
                      Icons.phone,
                      color: ColorManager.grey2,
                    ),
                    controller: _phoneNumberController,
                    hintText: 'Enter your phone number',
                    obscureText: false,
                    textInputType: TextInputType.phone,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Email';
                      }
                      return null;
                    },
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorManager.grey2,
                    ),
                    controller: _emailController,
                    hintText: 'Enter your email',
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Password';
                      }
                      return null;
                    },
                    prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                    suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                    controller: _passwordController,
                    hintText: 'Enter Your Password',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid Password';
                      }
                      return null;
                    },
                    prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                    suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                    controller: _confirmPasswordController,
                    hintText: 'Confirm Your Password',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCheckbox(
                        isChecked: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        borderColor: ColorManager.grey3,
                      ),
                      SizedBox(width: 7.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
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
                  SizedBox(height: 36.h),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.olive2,
                      borderRadius: BorderRadiusDirectional.circular(32.r),
                    ),
                    width: 327.w,
                    height: 56.h,
                    child: MaterialButton(
                      onPressed: _handleSignup,
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontSize: FontSize.s16,
                          color: ColorManager.white,
                          fontWeight: FontWeightManager.medium,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
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
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          context.pushReplacement(AppRouter.customerloginPath);
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: ColorManager.olive2,
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
SizedBox(
                    height: 56.h,
                    width: 327.w,
                    child: IntlPhoneField(
                      validator: (value) {
                        if (value == null || value.completeNumber.isEmpty) {
                          return 'Please enter valid Number';
                       }
                        return null;
                      },
                      controller: _phoneNumberController,

                      initialCountryCode: "EG",
                      cursorColor: ColorManager.grey2,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding:
                        EdgeInsets.only(top: 16.r, bottom: 16.r, right: 16.r),
                        fillColor: ColorManager.white,
                        hintText: "Enter your number",
                        hintStyle: TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.regular,
                          color: ColorManager.grey2,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide: BorderSide(
                            color: ColorManager.black2,
                            width: 1.r,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide: BorderSide(
                            color: ColorManager.white,
                            width: 1.r,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.r),
                          borderSide: BorderSide(
                            color: ColorManager.grey4,
                            width: 1,
                          ),
                        ),
                        counterText: "",
                      ),
                    ),
                  ),
 */