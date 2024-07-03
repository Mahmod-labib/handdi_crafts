import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CrafterProductsCard extends StatefulWidget {
  CrafterProductsCard({super.key , required this.productname,required this.productsalary , required this.imgPath});
  String productname="";
  String imgPath="";
  String productsalary="";

  @override
  State<CrafterProductsCard> createState() => _CrafterProductsCardState();
}

class _CrafterProductsCardState extends State<CrafterProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 158.h,
      decoration:  BoxDecoration(
        color: ColorManager.white2,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child:Column(
        children: [
          Image(image: AssetImage(widget.imgPath) , width: 160.w,height: 150.h,),
          SizedBox(height: 12.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(widget.productname ,style: TextStyle(
              color: ColorManager.black,
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.regular,
            ),),
              Text(widget.productsalary ,style: TextStyle(
                color: ColorManager.black,
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.regular,
              ),)],
          )

        ],
      ),
    );

  }
}
