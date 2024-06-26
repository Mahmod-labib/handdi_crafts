import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/products_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../widget/custom_button.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        title: Text("Products" , style: TextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium , ),),
        actions: [
          SvgPicture.asset("assets/images/notification.svg" ,),
          SizedBox(width: 15.w,),
          InkWell(
              onTap: (){
                context.pushReplacement(AppRouter.wishlistpath);
              },
              child: SvgPicture.asset("assets/images/heart.svg" ,)),
          SizedBox(width: 15.w,),
          InkWell(
              onTap: (){
                context.pushReplacement(AppRouter.cartpath);
              },
              child: SvgPicture.asset("assets/images/Bag.svg" ,)),
          SizedBox(width: 18.w,),
        ],
      ),
      
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
            child: ListView.builder(

              padding: EdgeInsets.all(8.r),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
                itemBuilder: (context , index){
              return Padding(
                padding:  EdgeInsets.all(8.0.r),
                child: CustomButton(text: 'P Category', fun: () {  }, height:33.h, width: 79.w, btncolor: Colors.white, textcolor: ColorManager.black2,),
              );
            }),
          ),
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
                return InkWell(
                    onTap: (){
                      context.pushReplacement(AppRouter.productdetailspath);
                    },
                    child: ProductsCard(productname: "ProductName", productsalary: "250 EGP", imgPath: "assets/images/Product.png"));
              },
              itemCount: 10, // specify the number of items
            ),
          ),

        ],
      ),

    );
  }
}
