import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSizeContainer extends StatefulWidget {
  const SelectSizeContainer({super.key});

  @override
  State<SelectSizeContainer> createState() => _SelectSizeContainerState();
}

class _SelectSizeContainerState extends State<SelectSizeContainer> {
  String selectedSize = "M"; // Default selected size

  @override
  Widget build(BuildContext context) {
    Color chosenitem = ColorManager.olive2;
    Color unchosenitem = ColorManager.white2;

    Widget buildSizeContainer(String size) {
      bool isSelected = selectedSize == size;
      return InkWell(
        onTap: () {
          setState(() {
            selectedSize = size;
          });
        },
        child: Container(
          width: 45.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: isSelected ? chosenitem : unchosenitem,
            borderRadius: BorderRadius.circular(12.r),
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                fontWeight: FontWeightManager.thin,
                fontSize: FontSize.s24,
                color: ColorManager.grey4,
              ),
            ),
          ),
        ),
      );
    }

    return Row(
      children: [
        buildSizeContainer("S"),
        SizedBox(width: 6.w),
        buildSizeContainer("M"),
        SizedBox(width: 6.w),
        buildSizeContainer("L"),
        SizedBox(width: 6.w),
        buildSizeContainer("XL"),
        SizedBox(width: 6.w),
        buildSizeContainer("XXL"),
      ],
    );
  }
}
