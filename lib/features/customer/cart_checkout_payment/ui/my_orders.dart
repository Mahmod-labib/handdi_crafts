import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/cart_checkout_payment/widget/custom_review_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            context.pushReplacement("");
          },
        ),
        title: Text(
          "My Orders",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/notification.svg" ,),
          SizedBox(width: 15.w,),
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.0.r , top: 20.r , right: 20.r),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Order no.214411 | Conf. code 2584" ,style: TextStyle(
                  color: ColorManager.black , fontWeight: FontWeightManager.medium ,
                  fontSize: FontSize.s16 ,
                ),),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.r),
              child: Align(
                alignment: Alignment.topLeft,

                child: Text("Placed on Dec 3, 2023" ,style: TextStyle(
                  color: ColorManager.grey2 , fontWeight: FontWeightManager.thin ,
                  fontSize: FontSize.s10 ,
                ),),
              ),
            ),
            SizedBox(
            height: 200.h,
              child: ListView.builder(
                  itemCount: 5,
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

                      subtitle: Text("DELIVERED",style: TextStyle(
                        color: ColorManager.olive2 , fontWeight: FontWeightManager.medium ,
                        fontSize: FontSize.s12 ,
                      ),),

                    ),
                  ],
                );
              }),
            ),
            Padding(
              padding:  EdgeInsets.all(10.0.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomReviewButton(text: "Review seller", fun: (){
                    context.pushReplacement(AppRouter.reviewpath);
                  }),
                  CustomReviewButton(text: "Review product", fun: (){
                    context.pushReplacement(AppRouter.productreviewpath);
                  }),
                  CustomReviewButton(text: "Review delivery", fun: (){
                    context.pushReplacement(AppRouter.packegedeliveredpath);

                  }),
                  
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w , bottom: 20.h , top: 14.h),
              child: Row(
                children: [
                 Text("Problem with this order?" , style:
                   TextStyle(
                     color: ColorManager.black , fontWeight: FontWeightManager.medium ,
                     fontSize: FontSize.s12 ,
                   ),
                 ),
                  InkWell(
                    onTap: (){
                      context.pushReplacement(AppRouter.requestproductreturnpath);
                    },
                    child: Text("Request a product return" , style:
                    TextStyle(
                      color: ColorManager.olive2 , fontWeight: FontWeightManager.medium ,
                      fontSize: FontSize.s12 ,
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: ColorManager.white4,),
            Padding(
              padding:  EdgeInsets.only(left: 20.0.r , top: 20.r , right: 20.r),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Order no.211211 | Conf. code 2584" ,style: TextStyle(
                  color: ColorManager.black , fontWeight: FontWeightManager.medium ,
                  fontSize: FontSize.s16 ,
                ),),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.r),
              child: Align(
                alignment: Alignment.topLeft,

                child: Text("Placed on Mar 28, 2023" ,style: TextStyle(
                  color: ColorManager.grey2 , fontWeight: FontWeightManager.thin ,
                  fontSize: FontSize.s10 ,
                ),),
              ),
            ),
            SizedBox(
              height: 200.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context , index){
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.only(top: 8.h , bottom: 8.h , left: 33.w),
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset("assets/images/Rectangle 92.png" ,width: 50.w ,height: 50.h,)),

                          title: Text("Handmade Hat for Summer" ,style: TextStyle(
                            color: ColorManager.black , fontWeight: FontWeightManager.regular ,
                            fontSize: FontSize.s14 ,
                          ),),

                          subtitle: Text("CANCELLED",style: TextStyle(
                            color: ColorManager.red , fontWeight: FontWeightManager.medium ,
                            fontSize: FontSize.s12 ,
                          ),),

                        ),
                      ],
                    );
                  }),
            ),

          ],
        ),
      ) ,
    );
  }
}
