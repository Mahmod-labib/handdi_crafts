import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_container_2.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_craft_product.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_explore_section.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_for_you_section.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_scroll_cat.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_search_text_field.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_shop_container.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_trending_crafts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theming/routes_manager.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar:  BottomNavBar(),
      backgroundColor: ColorManager.white2,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 20.w, bottom: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Good Morning ",
                              style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.grey5,
                                  fontWeight: FontWeightManager.regular),
                            ),
                            Text(
                              "👋",
                              style: TextStyle(
                                  fontSize: FontSize.s14,
                                  color: Colors.amber,
                                  fontWeight: FontWeightManager.regular),
                            )
                          ],
                        ),
                        Text(
                          "Nada",
                          style: TextStyle(
                              fontSize: FontSize.s24,
                              color: ColorManager.grey5,
                              fontWeight: FontWeightManager.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            context.pushReplacement(AppRouter.emptynotficationpath);
                          },
                          child: SvgPicture.asset(
                            "assets/images/notification.svg",
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        InkWell(
                          onTap: (){
                            context.pushReplacement(AppRouter.emptywishlistpath);
                          },
                          child: SvgPicture.asset(
                            "assets/images/heart.svg",
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        InkWell(
                          onTap: (){
                            context.pushReplacement(AppRouter.emptycartpath);
                          },
                          child: SvgPicture.asset(
                            "assets/images/Bag.svg",
                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const CustomSearchField(),
              const CustomCategory(),
              const CustomContainer2(),
              const CustomForYouSection(),
              const CustomTrendingCrafters(),
              const CustomExploreContainer(),
              const CustomCraftProduct(),
              const CustomShopContainer(),
            ],
          )
        ],
      ),
    );
  }
}
