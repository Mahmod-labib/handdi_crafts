import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/crafter/crafterprofile&reviews/widget/custom_product_card.dart';



import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_application_1/features/crafter/crafterprofile&reviews/widget/button.dart';




class CrafterProfileCrafter extends StatefulWidget {
  const CrafterProfileCrafter({super.key});

  @override
  State<CrafterProfileCrafter> createState() => _CrafterProfileCrafterState();
}

class _CrafterProfileCrafterState extends State<CrafterProfileCrafter> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 310,
              child: Stack(
                children: [
               ClipRRect(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(30.r),
                   topRight: Radius.circular(30.r),
                 ),
                 child: Image(image:const AssetImage('assets/images/crafter_profile_img.png'),
                 width: 375.w,
                 height: 227.h,
                 ),
               ),
                  Positioned(
                      top: 24.h,
                      left: 24.w,
                      child: IconButton(icon: Icon(Icons.arrow_back_ios , color:ColorManager.white2,), onPressed: () {
                    context.pushReplacement(AppRouter.craftersspath);
                  },)),
                  Positioned(
                      top: 195.h,
                      left: 157.w,
                      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40.r,
                        child:  Image.asset("assets/images/crafter_account_img.png"),),
                      Text("Salma Mostafa" ,style: TextStyle(fontWeight: FontWeightManager.medium ,
                      color: ColorManager.black , fontSize: FontSize.s14,
                      ),),
                      Text("Crochet Instructor" ,style: TextStyle(fontWeight: FontWeightManager.thin ,
                        color: ColorManager.grey2 , fontSize: FontSize.s9,
                      ),),
                    ],
                  ))
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w , right: 20.w ,top: 8.h , bottom: 24.r ),
              child: Row(
                children: [
                  Icon(Icons.info_outline , color: ColorManager.black2,),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Text("This Crafter offers a course. Price: EGP 850.   Duration: 20 hours. " ,
                    style: TextStyle(color: ColorManager.grey5 , fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin),
                    ),
                  ),

                ],
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                     Text("5+ yrs" ,
                      style: TextStyle(color: ColorManager.black , fontSize: FontSize.s12 , fontWeight: FontWeightManager.regular),
                    ),
                    SizedBox(height: 3.h,),
                    Text("Experience" ,
                      style: TextStyle(color: ColorManager.grey2 , fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 20.w,),
                    Container(
                      width: 1.w,
                      height: 50.h,
                      color: ColorManager.grey2,
                    ),
                    SizedBox(width: 20.w,),
                  ],
                ),
                Column(
                  children: [
                    Text("1,793" ,
                      style: TextStyle(color: ColorManager.black , fontSize: FontSize.s12 , fontWeight: FontWeightManager.regular),
                    ),
                    SizedBox(height: 3.h,),
                    Text("Orders" ,
                      style: TextStyle(color: ColorManager.grey2 , fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 20.w,),
                    Container(
                      width: 1.w,
                      height: 50.h,
                      color: ColorManager.grey2,
                    ),
                    SizedBox(width: 20.w,),
                  ],
                ),
                Column(
                  children: [
                    Text("4.9" ,
                      style: TextStyle(color: ColorManager.black , fontSize: FontSize.s12 , fontWeight: FontWeightManager.regular),
                    ),
                    SizedBox(height: 3.h,),
                    Text("Rating" ,
                      style: TextStyle(color: ColorManager.grey2 , fontSize: FontSize.s12 , fontWeight: FontWeightManager.thin),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(

                    text: "Following", onPressed: () {

                },
                    width: 160.w,
                    height: 46.h,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.medium),
                SizedBox(width: 15.w,),
                CustomButton(
backgroundColor: ColorManager.white2,borderColor: ColorManager.olive2,
                    textColor: ColorManager.olive2,
                    text: "Review", onPressed: () {

                },
                    width: 160.w,
                    height: 46.h,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.medium),
              ],
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: SizedBox(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6.0.r,
                    mainAxisSpacing: 3.0.r,
                    childAspectRatio: 0.48,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (){
                          context.pushReplacement(AppRouter.productdetailspath);
                        },
                        child: CrafterProductsCard(productname: "ProductName", productsalary: "250 EGP", imgPath: "assets/images/Product.png"));
                  },
                  itemCount: 10, // specify the number of items
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
