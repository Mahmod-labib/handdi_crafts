import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_category_card.dart';

class Material extends StatelessWidget {
  const Material({super.key});

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
            context.pushReplacement(AppRouter.customerhomepath);
          },
        ),
        title: Text("Category" , style: TextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium , ),),
        actions: [
          SvgPicture.asset("assets/images/heart.svg" ,),
          SizedBox(width: 15.w,),
          SvgPicture.asset("assets/images/Bag.svg" ,),
          SizedBox(width: 18.w,),
        ],
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder:(context , index){
            return SizedBox(
                height: 262.h,
                width: 156.w,
                child: CustomCategoryCard(cardName: "Sewing Machines", imgPath: "assets/images/Rectangle00.png"));

          } ),
    );
  }
}
