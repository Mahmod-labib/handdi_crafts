import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputQuantity extends StatefulWidget {
  const InputQuantity({super.key});

  @override
  _InputQuantityState createState() => _InputQuantityState();
}

class _InputQuantityState extends State<InputQuantity> {
  int _quantity = 1;  // Initial quantity value

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: _decrementQuantity,
          style: ElevatedButton.styleFrom(
            primary: ColorManager.white, // Background color
            onPrimary: ColorManager.black, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), bottomLeft: Radius.circular(30.r)),
            ),
            side: BorderSide(color: ColorManager.white), // Border color
            minimumSize: Size(52.w, 46.h), // Button size
          ),
          child: Text(
            "-",
            style: TextStyle(fontWeight: FontWeightManager.thin, fontSize: FontSize.s20),
          ),
        ),
        Container(
          width: 52.w,
          height: 46.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: ColorManager.white),
              left: BorderSide(color: ColorManager.white),
              top: BorderSide(color: ColorManager.white),
              bottom: BorderSide(color: ColorManager.white),
            ),
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              '$_quantity',
              style: TextStyle(fontWeight: FontWeightManager.thin, fontSize: FontSize.s20, color: ColorManager.black),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _incrementQuantity,
          style: ElevatedButton.styleFrom(
            primary: ColorManager.white, // Background color
            onPrimary: ColorManager.black, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(30.r), bottomRight: Radius.circular(30.r)),
            ),
            side: BorderSide(color: ColorManager.white), // Border color
            minimumSize: Size(52.w, 46.h), // Button size
          ),
          child: Text(
            "+",
            style: TextStyle(fontWeight: FontWeightManager.thin, fontSize: FontSize.s20),
          ),
        ),
      ],
    );
  }
}
