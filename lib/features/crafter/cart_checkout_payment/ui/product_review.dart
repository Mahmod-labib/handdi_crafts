import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/font_manager.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

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
            context.pushReplacement(AppRouter.my_orderspath);
          },
        ),
        title: Text(
          "Product Review",
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
body: ListView.builder(
    itemCount: 3,
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
          Padding(
            padding:  EdgeInsets.only(left: 20.0.r),
            child: RatingBar(
              size: 20,
              maxRating: 5,
              initialRating: 0,
              halfFilledColor: ColorManager.yellow,
              direction: Axis.horizontal,
              filledColor: ColorManager.yellow,
              filledIcon: Icons.star,
              emptyIcon: Icons.star, onRatingChanged: (double ) {  },),
          ),

          Divider(color: ColorManager.white4,),

        ],
      );
    }),
    );
  }
}
