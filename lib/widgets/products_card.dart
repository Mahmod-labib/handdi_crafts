import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsCard extends StatefulWidget {
  ProductsCard({super.key, required this.productname, required this.productsalary, required this.imgPath});
  String productname = "";
  String imgPath = "";
  String productsalary = "";

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  Color _iconColor = ColorManager.white2;

  void AddProductToFavourite() {
    setState(() {
      _iconColor = _iconColor == ColorManager.white2 ? ColorManager.red : ColorManager.white2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 202.h,
      decoration: BoxDecoration(
        color: ColorManager.white2,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Column(
        children: [
          Stack(children: [
            Image(image: AssetImage(widget.imgPath), width: 160.w, height: 150.h),
            Positioned(
              top: 10.h,
              right: 10.h,
              child: IconButton(
                icon: Icon(Icons.favorite, color: _iconColor),
                onPressed: AddProductToFavourite,
              ),
            ),
          ]),
          SizedBox(height: 12.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.productname,
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
              Text(
                widget.productsalary,
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
