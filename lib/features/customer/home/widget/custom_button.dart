import 'package:flutter/material.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.fun, required this.height, required this.width});
   final String text;
   final VoidCallback fun;
   final double height;
   final double width;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      color: ColorManager.olive2,
      minWidth: width,
      height: height,
      onPressed:fun ,
      child:  Text("$text",
          style: TextStyle(fontSize: FontSize.s16, color: ColorManager.white,fontWeight: FontWeightManager.medium)),
    );
  }
}
