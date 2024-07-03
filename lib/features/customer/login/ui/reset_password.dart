import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_event.dart';
import 'package:flutter_application_1/features/customer/login/bloc/forgot_password/forgot_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_text_field.dart';


class CustomerResetPassword extends StatelessWidget {
   CustomerResetPassword({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();

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
            context.pushReplacement(AppRouter.customerloginPath);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Reset Password",
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
        padding: EdgeInsets.all(24.0.r),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                controller: _passwordController,
                hintText: 'Enter new password',
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                controller: _confirmPasswordController,
                hintText: 'Confirm new password',
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 55.h),
              BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
                listener: (context, state) {
                  if (state is ForgotPasswordSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Password reset successfully')),
                    );
                    context.pushReplacement(AppRouter.customerloginPath);
                  } else if (state is ForgotPasswordFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is ForgotPasswordLoading) {
                    return Center(child: CircularProgressIndicator());
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
                        if (_formKey.currentState!.validate()) {
                          context.read<ForgotPasswordBloc>().add(
                            ResetPasswordEvent(
                              _passwordController.text,
                              _confirmPasswordController.text,
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Reset Password",
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
            ],
          ),
        ),
      ),
    );
  }
}
