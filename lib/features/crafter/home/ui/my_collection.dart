import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/crafter/home/widget/collection_grid_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCollection extends StatelessWidget {
  const MyCollection({super.key});

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
          onPressed: () {},
        ),
        title: Text(
          "My Collection",
          style: TextStyle(
            fontSize: FontSize.s18,
            color: ColorManager.black,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/Search.svg"),
          SizedBox(width: 15.w),
          SvgPicture.asset("assets/images/notification.svg"),
          SizedBox(width: 18.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 31.h, left: 20.w),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75, // Adjust as needed
            ),
            itemCount: 2, // Replace with actual item count
            itemBuilder: (context, index) {
              return const CollectionGridItem(
                imagePaths: [
                  "assets/images/Rectangle 100000.png",
                  "assets/images/Rectangle 100000.png",
                  "assets/images/Rectangle 100000.png",
                  "assets/images/Rectangle 100000.png",
                ],
                title: 'Bags',
              )
              ;
            },

        ),
      ),
    );
  }
}


