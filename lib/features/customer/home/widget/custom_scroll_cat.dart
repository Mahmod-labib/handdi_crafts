import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_container_category_home1.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return      Padding(
      padding:  EdgeInsets.only(left: 20.w , right: 20.w , bottom: 20.h),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 335.w,
          height: 100.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomContainer(imgPath: "assets/images/Rectangle999.jpg", text: "Craters"),
                SizedBox(width: 20.w,),
                InkWell(
                    onTap: (){
                      context.pushReplacement(AppRouter.craftspath);
                    },
                    child: CustomContainer(imgPath: "assets/images/Rectangle1000.jpg", text: "Crafts")),
                SizedBox(width: 20.w,),
                InkWell(
                    onTap: ()=>context.pushReplacement("/customerCategory"),
                    child: CustomContainer(
                        imgPath: "assets/images/Rectangle1001.jpg", text: "Products")),
                SizedBox(width: 20.w,),
                InkWell(
                    onTap: () {
                      context.pushReplacement('/coursesAndWorkshop');
                    },
                    child: CustomContainer(imgPath: "assets/images/courses.jpg", text: "Courses")),
                SizedBox(width: 20.w,),

                InkWell(
                    onTap: () {
                      context.pushReplacement(AppRouter.materialspath);
                    },
                    child: CustomContainer(imgPath: "assets/images/materials.jpg", text: "Materials"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
