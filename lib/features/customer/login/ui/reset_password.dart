import 'package:flutter/material.dart';
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
  final _formKey=GlobalKey<FormState>();
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
            padding:  EdgeInsets.all(24.0.r),
            child: Form(
              key: _formKey,
              child: Column(children: [
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter  Valid Name';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.lock, color: ColorManager.grey2),
                  suffixIcon: Icon(Icons.visibility, color: ColorManager.grey2),
                  controller: TextEditingController(),
                  hintText: '  Enter new password ',
                  obscureText: false,
                  textInputType: TextInputType.text,
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
                  hintText: '  Confirm new password ',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 55.h,),
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
                        context.pushReplacement(AppRouter.customerloginPath);

                      }
                    },
                    child:  Text("Reset Password",
                        style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
                  ),
                ),

              ]),

            )));
  }
}
