import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_event.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
class CustomerVerifiyEmailForgotPassword extends StatefulWidget {
  const CustomerVerifiyEmailForgotPassword({super.key});

  @override
  State<CustomerVerifiyEmailForgotPassword> createState() =>
      _CustomerVerifiyEmailForgotPasswordState();
}

class _CustomerVerifiyEmailForgotPasswordState
    extends State<CustomerVerifiyEmailForgotPassword> {
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
                      color: ColorManager.black,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Please enter the code that we have sent to your email",
                    style: TextStyle(
                      fontWeight: FontWeightManager.thin,
                      fontSize: FontSize.s14,
                      color: ColorManager.grey4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              VerificationCode(
                keyboardType: TextInputType.number,
                underlineColor: ColorManager.grey,
                cursorColor: ColorManager.olive2,
                fullBorder: true,
                textStyle: TextStyle(
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
              SizedBox(height: 40.h),
              BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
                listener: (context, state) {
                  if (state is ForgotPasswordSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Code verified')),
                    );
                    context.pushReplacement(AppRouter.crafterresetpasswordpath);
                  } else if (state is ForgotPasswordFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is ForgotPasswordLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return Container(
                    decoration: BoxDecoration(
                      color: ColorManager.olive2,
                      borderRadius: BorderRadiusDirectional.circular(32.r),
                    ),
                    width: 327.w,
                    height: 56.h,
                    child: MaterialButton(
                      onPressed: () {
                        if (_code != null) {
                          context.read<ForgotPasswordBloc>().add(
                            VerifyCodeEvent(_code!),
                          );
                        }
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: FontSize.s16,
                          color: ColorManager.white,
                          fontWeight: FontWeightManager.medium,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 24.h),
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
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: () =>
                        context.pushReplacement(AppRouter.customerverifiyemailforgotpasswordpath),
                    child: Text(
                      "Resend",
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
    );
  }
}
