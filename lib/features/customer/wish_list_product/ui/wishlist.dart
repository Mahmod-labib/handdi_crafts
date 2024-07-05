import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../widget/products_card.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        title: Text(
          "Wishlist",
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
      body: Padding(
        padding:  EdgeInsets.all(20.0.r),
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0.r,
            mainAxisSpacing: 10.0.r,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: (){
                  context.pushReplacement(AppRouter.productdetailspath);
                },
                child: ProductsCard(productname: "ProductName", productsalary: "250 EGP", imgPath: "assets/images/Product.png"));
          },
          itemCount: 10, // specify the number of items
        ),
      ),


    );
  }
}
