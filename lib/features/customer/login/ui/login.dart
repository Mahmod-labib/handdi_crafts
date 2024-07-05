import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/login/data/repositories/auth_repository.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthRepository _authRepository = AuthRepository();

  bool _isLoading = false;
  String? _errorMessage;

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      try {
        await _authRepository.login(
          _emailController.text,
          _passwordController.text,
        );
        if (mounted) {
          context.pushReplacement(AppRouter.customerhomepath);
        }
      } on DioError catch (e) {
        if (e.response != null) {
          switch (e.response!.statusCode) {
            case 400:
              setState(() {
                _errorMessage = "Bad Request: Invalid input";
              });
              break;
            case 401:
              setState(() {
                _errorMessage = "Unauthorized: Invalid email or password";
              });
              break;
            case 403:
              setState(() {
                _errorMessage = "Forbidden: You don't have permission";
              });
              break;
            case 404:
              setState(() {
                _errorMessage = "Not Found: The requested resource was not found";
              });
              break;
            case 500:
              setState(() {
                _errorMessage = "Internal Server Error: Please try again later";
              });
              break;
            default:
              setState(() {
                _errorMessage = "Error: ${e.response!.statusCode}";
              });
          }
        } else {
          // Handle Dio errors without response
          setState(() {
            _errorMessage = "Network Error: Please check your internet connection";
          });
        }
      } catch (e) {
        // Handle other errors
        setState(() {
          _errorMessage = "An unexpected error occurred: $e";
        });
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
            context.pushReplacement(AppRouter.introPage7Path);
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
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
                  hintText: 'Enter Your Email',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid password';
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
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        context.pushReplacement(AppRouter.customerforgotpasswordpath, extra: _emailController);
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
                SizedBox(height: 14.h),
                if (_errorMessage != null)
                  Padding(
                    padding:  EdgeInsets.only(bottom: 8.0.h),
                    child: Text(
                      _errorMessage!,
                      style: TextStyle(color: ColorManager.red),
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorManager.olive2,
                    borderRadius: BorderRadiusDirectional.circular(32.r),
                  ),
                  width: 327.w,
                  height: 56.h,
                  child: _isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : MaterialButton(
                    onPressed: _login,
                    child: Text(
                      "Login",
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
                      "Don't have an Account?",
                      style: TextStyle(
                        fontWeight: FontWeightManager.thin,
                        fontSize: FontSize.s15,
                        color: ColorManager.grey4,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.pushReplacement(AppRouter.customersignupPath);
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontWeight: FontWeightManager.thin,
                          fontSize: FontSize.s15,
                          color: ColorManager.olive2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: <Widget>[
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
                  ],
                ),
                SizedBox(height: 15.h),
                CustomButtonOutlined(
                  label: "Sign in with Google",
                  leftIcon: SvgPicture.asset('assets/images/img_google.svg'),
                ),
                CustomButtonOutlined(
                  label: "Sign in with Facebook",
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
