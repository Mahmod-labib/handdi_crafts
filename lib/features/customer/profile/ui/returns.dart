import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Returns extends StatelessWidget {
  const Returns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
            size: 24.r,
          ),
          onPressed: () {
            context.pushReplacement(AppRouter.profilepath);
          },
        ),
        title: Text(
          "Returns",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/notification.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/heart.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/Bag.svg"),
          SizedBox(width: 18.w),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
    padding:  EdgeInsets.only(left: 20.w , right: 20.w , top: 30.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(

      children: [
        SizedBox(width: 20.w,),
        Text("Order no.214411" , style: TextStyle(
        color: ColorManager.black ,
        fontSize: FontSize.s16,
        fontWeight: FontWeightManager.medium,
        ),),
      ],
    ),
      Row(
        children: [
          SizedBox(width: 20.w,),

          Text("Placed on Dec 3, 2023" , style: TextStyle(
            color: ColorManager.grey2 ,
            fontSize: FontSize.s10,
            fontWeight: FontWeightManager.thin,
          ),),
        ],
      ),
     SizedBox(height: 12.h,),
     Expanded(
       child: ListView.builder(
           itemCount:5,
           itemBuilder: (context ,index){
         return Column(
           children: [
             ListTile(
               leading: ClipRRect(
                   borderRadius: BorderRadius.circular(10.r),
                   child: Image.asset("assets/images/product_img.png" ,width: 75.w , height: 75.h,)),
               title:Text("Handmade Crochet Cardigan" , style: TextStyle(
                 color: ColorManager.black ,
                 fontSize: FontSize.s14,
                 fontWeight: FontWeightManager.regular,
               ),),
               subtitle: Text("EGP 250.00" , style: TextStyle(
                 color: ColorManager.olive2 ,
                 fontSize: FontSize.s12,
                 fontWeight: FontWeightManager.medium,
               ),),

               trailing:Text("Accepted" , style: TextStyle(
                 color: ColorManager.olive2 ,
                 fontSize: FontSize.s14,
                 fontWeight: FontWeightManager.regular,
               ),),
             ),
             Divider(color: ColorManager.white4,),
           ],
         );
       }),
     )

    ]),


      ),

    );
  }
}
