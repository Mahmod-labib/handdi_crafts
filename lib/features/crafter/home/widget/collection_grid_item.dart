import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollectionGridItem extends StatelessWidget {
  final List<String> imagePaths;
  final String title;

  const CollectionGridItem({
    super.key,
    required this.imagePaths,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          width: 157,
          height: 160.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Wrap(
              spacing: 13.w,
              runSpacing: 10.h,
              children: imagePaths.map((path) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    path,
                    width: 60.w,
                    height: 60.h,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(height: 16.h,),
        Text(
          title,
          style: TextStyle(
            fontSize: FontSize.s16,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ],
    );
  }
}
