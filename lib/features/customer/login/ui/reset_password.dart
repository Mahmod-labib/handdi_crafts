import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/login/data/repositories/forgot_password_repository.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_text_field.dart';

class CustomerResetPassword extends StatefulWidget {
  const CustomerResetPassword({super.key});

  @override
  State<CustomerResetPassword> createState() => _CustomerResetPasswordState();
}

class _CustomerResetPasswordState extends State<CustomerResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final ForgotPasswordRepository _forgotPasswordRepository = ForgotPasswordRepository();

  bool _isLoading = false;

  void _resetPassword() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        await _forgotPasswordRepository.resetPassword(
          _passwordController.text,
          _confirmPasswordController.text,
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password reset successfully')),
        );
        context.pushReplacement(AppRouter.customerloginPath);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

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
              if (_isLoading)
                const Center(child: CircularProgressIndicator())
              else
                Container(
                  decoration: BoxDecoration(
                    color: ColorManager.olive2,
                    borderRadius: BorderRadiusDirectional.circular(32.r),
                  ),
                  width: 327.w,
                  height: 56.h,
                  child: MaterialButton(
                    onPressed: _resetPassword,
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        fontSize: FontSize.s16,
                        color: ColorManager.white,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
