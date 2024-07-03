import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/signup/bloc/auth_bloc.dart';
import 'package:flutter_application_1/features/customer/signup/bloc/auth_event.dart';
import 'package:flutter_application_1/features/customer/signup/bloc/auth_state.dart';
import 'package:flutter_application_1/features/customer/signup/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../widgets/custom_checkbox.dart';
import '../../../../widgets/custom_text_field.dart';

class CustomerSignUp extends StatefulWidget {
  const CustomerSignUp({super.key});

  @override
  State<CustomerSignUp> createState() => _CustomerSignUpState();
}

class _CustomerSignUpState extends State<CustomerSignUp> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String? _phoneNumber;

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
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.pushReplacement(AppRouter.customerverifiyemailsignuppath);
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid Name';
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
                            return 'Please enter a valid Name';
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
                      SizedBox(
                        height: 56.h,
                        width: 327.w,
                        child: IntlPhoneField(
                          validator: (value) {
                            if (value == null) {
                              return 'Please enter a valid Number';
                            }
                            return null;
                          },
                          initialCountryCode: "EG",
                          cursorColor: ColorManager.grey2,
                          keyboardType: TextInputType.phone,
                          onChanged: (phone) {
                            _phoneNumber = phone.completeNumber;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.only(
                              top: 16.r,
                              bottom: 16.r,
                              right: 16.r,
                            ),
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
                      SizedBox(height: 16.h),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid Email';
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
                            return 'Please enter a valid Password';
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
                            return 'Please enter a valid Password';
                          } else if (value != _passwordController.text) {
                            return 'Passwords do not match';
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
                      SizedBox(height: 36.h),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorManager.olive2,
                          borderRadius: BorderRadiusDirectional.circular(32.r),
                        ),
                        width: 327.w,
                        height: 56.h,
                        child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() && isChecked) {
                              final user = UserModel(
                                firstName: _firstNameController.text,
                                lastName: _lastNameController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                                phoneNumber: _phoneNumber!, password2: _confirmPasswordController.text,
                              );

                              context.read<AuthBloc>().add(SignUpEvent(user));
                            } else if (!isChecked) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Please accept the terms and conditions')),
                              );
                            }
                          },
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
                            "Already have an account?",
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
                              context.pushReplacement(AppRouter.customerloginPath);
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: ColorManager.olive2,
                                fontSize: FontSize.s14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
