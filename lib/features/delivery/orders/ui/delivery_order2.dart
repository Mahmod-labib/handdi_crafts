import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/button.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/delivery_order_card.dart';
import 'package:flutter_application_1/features/delivery/orders/widget/delivery_order_card2.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DeliveryOrder2 extends StatelessWidget {
  const DeliveryOrder2({super.key});

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
            context.pushReplacement(AppRouter.crafterhomepath);
          },
        ),
        actions: [    SvgPicture.asset("assets/images/notification.svg"),SizedBox(width: 18.w,)],

        title: Text(
          "Orders",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body:ListView.builder(itemBuilder: (context, index) => DeliveryOrderCard2() ,itemCount: 7,),
    );
  }
}

