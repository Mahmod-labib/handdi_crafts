import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/home/widget/color_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/add_to_cart_button.dart';
import '../../../../widgets/input_quity.dart';
import '../../../../widgets/product_details_detailsalary_section.dart';
import '../../profile/widget/select_size.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
              ),
              child: Image(
                image: AssetImage("assets/images/Product.png"),
                width: 375.w,
                height: 413.h,
              ),
            ),
          ),
          Positioned(
            top: 25.h,
            child: Row(
              children: [
                SizedBox(width: 14.w),
                IconButton(
                  onPressed: () {
                    context.pushReplacement(AppRouter.categoryproductsspath);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: ColorManager.black),
                ),
                SizedBox(width: 80.w),
                Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: FontSize.s18,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.medium,
                  ),
                ),
                SizedBox(width: 30.w),
            SvgPicture.asset(
              "assets/images/heart.svg",
            ),
            SizedBox(
              width: 15.w,
            ),
            SvgPicture.asset(
              "assets/images/Bag.svg",
            ),
            SizedBox(
              width: 18.w,
            )],
            ),
          ),
       DraggableScrollableSheet(
           minChildSize: 0.40,
           maxChildSize: 0.75,
           initialChildSize: 0.40,
           builder: (BuildContext context ,scrollController ){
         return SingleChildScrollView(
           controller: scrollController,
           child: Container(
             width: double.infinity,
             height: 434.h,
             decoration: BoxDecoration(
               color: ColorManager.white2,
               borderRadius: BorderRadius.only(topRight: Radius.circular(30.r),topLeft:Radius.circular(30.r) ),
             ),
             child: Column(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding:  EdgeInsets.only(
                       left: 20.w ,
                       right: 20.w ,
                       top: 20.h,
                       bottom: 16.h,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Handmade Crochet Cardigan",style: TextStyle(
                                   fontWeight: FontWeightManager.medium,
                                   fontSize: FontSize.s18,
                                   color: ColorManager.black),
                               ),
                               SizedBox(height: 9.h,),
                               Text("Crocheting",style:  TextStyle(
                                   fontWeight: FontWeightManager.regular,
                                   fontSize: FontSize.s14,
                                   color: ColorManager.grey2),
                               ),
                             ],
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 "EGP 300",
                                 style:  TextStyle(
                                     decoration: TextDecoration.lineThrough,
                                     fontWeight: FontWeightManager.thin,
                                     fontSize: FontSize.s12,
                                     color: ColorManager.grey4),
                               ),
                               Text(
                                 "EGP 250",
                                 style:  TextStyle(
                                     fontWeight: FontWeightManager.medium,
                                     fontSize: FontSize.s16,
                                     color: ColorManager.olive2),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),

                   ],
                 ),
              SizedBox(height: 16.h,),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 16.h ,left: 20.h ),
                    child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Select Size' ,style: TextStyle(
                               fontSize: FontSize.s18,
                               color:ColorManager.black

                               ,fontWeight: FontWeightManager.regular),),
                           SizedBox(height: 3.h,),
                           const SelectSizeContainer(),
                         ],
                       ),
                     ],
                 ),
                  ),
                 Padding(
                   padding:  EdgeInsets.only(bottom: 16.h ,left: 20.h ),
                   child: Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Select Color' ,style: TextStyle(
                               fontSize: FontSize.s18,
                               color:ColorManager.black

                               ,fontWeight: FontWeightManager.regular),),
                           SizedBox(height: 3.h,),
                           const ColorPicker(),
                         ],
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: 20.w),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('In stock' ,style: TextStyle(
                           fontSize: FontSize.s16,
                           color:ColorManager.olive2
                           ,fontWeight: FontWeightManager.regular),),
                     ],
                   ),
                 ),
                  Padding(
                    padding:  EdgeInsets.only( top: 16.h , bottom: 16.h ,left: 20.h , right: 20.h),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const InputQuantity(),
                       SizedBox(width: 4.w,),
                       AddToCartButton(fun: () {
                         context.pushReplacement(AppRouter.cartpath);
                       },),
                     ],
                 ),
                  ),
               ],
             ),
           ),
         );
       })
        ],
      ),
    );
  }
}
