import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_button.dart';
import 'package:flutter_application_1/features/customer/signup/widget/custom_checkbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_text_field.dart';

class RequestProductReturn extends StatelessWidget {
  const RequestProductReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorManager.black2,
              size: 24.r,
            ),
            onPressed: () {
              context.pushReplacement(AppRouter.my_orderspath);
            },
          ),
          title: Text(
            "Request a Product Return",
            style: TextStyle(
              fontSize: FontSize.s18,
              color: ColorManager.black,
              fontWeight: FontWeightManager.medium,
            ),
          ),
        ),

    body: Column(
        children: [
          SizedBox(
            height: 200.h,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context , index){
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.only(top: 8.h , bottom: 8.h , left: 33.w),
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset("assets/images/Rectangle 92.png" ,width: 50.w ,height: 50.h,)),

                        title: Text("Wild Vanilla Scented Candle" ,style: TextStyle(
                          color: ColorManager.black , fontWeight: FontWeightManager.regular ,
                          fontSize: FontSize.s14 ,
                        ),),

                       trailing: CustomCheckbox(isChecked: true ,onChanged: (b){}),

                      ),
                    ],
                  );
                }),
          ),
          SizedBox(height: 10.h,),

          SizedBox(
            width: 327.w,
            height: 130.h,
            child: CustomTextFormField(
              contentPadding: EdgeInsets.all(15.r),
              maxLines: 10,
              hintText: "Please tell us the reason of the complaint",
              hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                fontSize: FontSize.s14,
              ),
            ),
          ),
          
          Padding(
            padding:  EdgeInsets.only(left: 20.w , right: 20.w , top: 12.h ,bottom: 59.h),
            child: Row(
              children: [
                Icon(Icons.circle_rounded , size: 5.r, color: ColorManager.olive1,),
                SizedBox(width: 3.w,),
                Column(
                  children: [
                    Text("Once we receive this information we will process the refund." ,style:TextStyle(color:ColorManager.black ,fontWeight: FontWeightManager.regular ,
                      fontSize: FontSize.s12,
                    ), ),
                  ],
                )
              ],
            ),
          ),

        CustomButton(text: "Sent Request",
            fun: (){},
            height: 56.h,
            width: 327.w, btncolor: ColorManager.olive2,
            textcolor: ColorManager.white2)



        ],
    ),
    );
  }
}
