import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../crafter/My Customers Reviews/widget/button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<int> quantities = [1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            context.pushReplacement(AppRouter.customerhomepath);
          },
        ),
        title: Text(
          "Cart",
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
        padding: EdgeInsets.only(top: 20.0.r, right: 20.r, left: 20.r),
        child: Column(
          children: [
            SizedBox(
              height: 240.h,
              child: ListView.builder(
                itemCount: quantities.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      setState(() {
                        quantities.removeAt(index);
                      });

                      showBottomSheet(context: context, builder: (context){
                        return Container(
                          width: double.infinity,
                          height: 289.h,
                          decoration: BoxDecoration(
                            color: ColorManager.white2,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.r),
                              topLeft: Radius.circular(30.r),
                            )
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 20.w,bottom: 18.w ,left:82.w  , right: 82.w ),
                                child: Text(
                                  "This item will be removed.",
                                  style: TextStyle(
                                    color: ColorManager.black,
                                    fontSize: FontSize.s16,
                                    fontWeight: FontWeightManager.medium,
                                  ),
                                ),
                              ),
                              Divider(color: ColorManager.grey2,),

                              Padding(
                                padding:  EdgeInsets.only(top: 20.h ),
                                child: ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset(
                                      "assets/images/Product.png",
                                      width: 84.w,
                                      height: 84.h,
                                    ),
                                  ),
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Handmade crochet cardigan",
                                        style: TextStyle(
                                          fontSize: FontSize.s14,
                                          color: ColorManager.black,
                                          fontWeight: FontWeightManager.regular,
                                        ),
                                      ),
                                      Text(
                                        "brown   size:L",
                                        style: TextStyle(
                                          fontSize: FontSize.s14,
                                          color: ColorManager.grey2,
                                          fontWeight: FontWeightManager.thin,
                                        ),
                                      ),
                                      Text(
                                        "EGP 250",
                                        style: TextStyle(
                                          fontSize: FontSize.s14,
                                          color: ColorManager.olive2,
                                          fontWeight: FontWeightManager.medium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: SizedBox(
                                    height: 20.h,
                                    width: 67.w,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 20.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5.r),
                                                color: ColorManager.grey2,
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: ColorManager.white2,
                                                  ),
                                                  iconSize: 10.r,
                                                  onPressed: () {
                                                    setState(() {
                                                      if (quantities[index] > 1) quantities[index]--;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text("${quantities[index]}"),
                                            SizedBox(width: 5.w),
                                            Container(
                                              width: 20.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5.r),
                                                color: ColorManager.olive2,
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: ColorManager.white2,
                                                  ),
                                                  iconSize: 10.r,
                                                  onPressed: () {
                                                    setState(() {
                                                      quantities[index]++;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(left: 30.w , right: 30.w, top: 51.h , bottom: 31.h),
                                child: Row(
                                  children: [
                                    CustomButton(
                                        text: "Cancel",
                                        onPressed: (){
                                          context.pop();
                                        },
                                        height: 46.h,
                                        width: 145.w,
                                        backgroundColor: ColorManager.white2,
                                        textColor: ColorManager.olive2, fontWeight: FontWeightManager.thin, fontSize: FontSize.s16,),
                                    SizedBox(width: 13.w,),
                                    CustomButton(
                                        text: "Remove",
                                        onPressed: (){
                                          //quantities.removeAt(1);

                                          context.pop();
                                        },
                                        height: 46.h,
                                        width: 145.w,
                                        backgroundColor: ColorManager.olive2,
                                        textColor: ColorManager.white2,  fontWeight: FontWeightManager.thin, fontSize: FontSize.s16,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(left: 20.r),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              "assets/images/Product.png",
                              width: 84.w,
                              height: 84.h,
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Handmade crochet cardigan",
                                style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.black,
                                  fontWeight: FontWeightManager.regular,
                                ),
                              ),
                              Text(
                                "brown   size:L",
                                style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.grey2,
                                  fontWeight: FontWeightManager.thin,
                                ),
                              ),
                              Text(
                                "EGP 250",
                                style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.olive2,
                                  fontWeight: FontWeightManager.medium,
                                ),
                              ),
                            ],
                          ),
                          trailing: SizedBox(
                            height: 20.h,
                            width: 67.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.r),
                                        color: ColorManager.grey2,
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.remove,
                                            color: ColorManager.white2,
                                          ),
                                          iconSize: 10.r,
                                          onPressed: () {
                                            setState(() {
                                              if (quantities[index] > 1) quantities[index]--;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text("${quantities[index]}"),
                                    SizedBox(width: 5.w),
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.r),
                                        color: ColorManager.olive2,
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.add,
                                            color: ColorManager.white2,
                                          ),
                                          iconSize: 10.r,
                                          onPressed: () {
                                            setState(() {
                                              quantities[index]++;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(color: ColorManager.grey2),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24.5.h),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Order Summary",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal (${quantities.length} Items)",
                      style: TextStyle(
                        color: ColorManager.grey4,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.thin,
                      ),
                    ),
                    Text(
                      "EGP ${quantities.length * 250}.00",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(
                        color: ColorManager.grey4,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.thin,
                      ),
                    ),
                    Text(
                      "EGP 30.00",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        color: ColorManager.grey4,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.thin,
                      ),
                    ),
                    Text(
                      "EGP ${quantities.length * 250 + 30}.00",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 59.h),
            CustomButton(
              text: "Checkout",
              onPressed: () {
                context.pushReplacement(AppRouter.checkoutpath);
              },
              height: 56.h,
              width: 327.w,
              backgroundColor: ColorManager.olive2,
              textColor: ColorManager.white2, fontSize: FontSize.s16 ,  fontWeight: FontWeightManager.medium,
            ),
          ],
        ),
      ),
    );
  }
}
