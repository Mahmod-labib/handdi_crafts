import 'package:flutter/material.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key ,  this.onPressedFun , this.title} );

   final onPressedFun;
   final String? title;
  @override
  Widget build(BuildContext context) {

    return  AppBar(
      leading: IconButton(
        icon:  Icon(Icons.arrow_back_ios , color: ColorManager.black2,), onPressed: onPressedFun,
      ),
      backgroundColor: Colors.white,
      title:  Text(
        "$title",
        style: TextStyle(
          color: ColorManager.black2,
          fontSize: FontSize.s18,
          fontWeight: FontWeightManager.medium,
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }
}
