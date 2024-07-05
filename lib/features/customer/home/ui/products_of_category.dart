import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/customer/wish_list_product/widget/products_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/routes_manager.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

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
            context.pushReplacement(AppRouter.craftspath);
          },
        ),
        title: Text("ProductCategoryName" , style: TextStyle(
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

      body: Column(
        children: [
          SizedBox(height: 20.h,),
          Expanded(
            child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0.r,
                mainAxisSpacing: 10.0.r,
                childAspectRatio: 0.80,
              ),
              itemBuilder: (context, index) {
                return ProductsCard(productname: "ProductName", productsalary: "250 EGP", imgPath: "assets/images/Product.png");
              },
              itemCount: 10, // specify the number of items
            ),
          ),

        ],
      ),

    );
  }
}
