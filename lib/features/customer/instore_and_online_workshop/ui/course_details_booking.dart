import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../crafter_profile_and_reviews/widget/custom_button.dart';
import '../widget/verified_reviews_courses.dart';

class BookingCourse extends StatelessWidget {
  const BookingCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 393.h,
              child: Column(children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/Rectangle 1004.png",
                      width: 375.w,
                      height: 304.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 26.h),
                      child: IconButton(
                          onPressed: () {
                            context.pushReplacement(AppRouter.coursesspath);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: ColorManager.white2,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                    left: 20.w,
                  ),
                  child: Text("Beginner’s Guide to Crochet Workshop",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: FontSize.s20,
                        fontWeight: FontWeightManager.medium,
                      )),
                ),
              ]),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(" 4.7",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                        SizedBox(
                          width: 14.w,
                        ),
                        RatingBar.readOnly(
                            size: 20,
                            maxRating: 5,
                            initialRating: 4.5,
                            halfFilledColor: ColorManager.yellow,
                            direction: Axis.horizontal,
                            filledColor: ColorManager.yellow,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star),
                        Text("(812)",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                      Row(children: [
                        Icon(Icons.calendar_month, color: ColorManager.olive2),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text("5 Nov",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                      SizedBox(height: 16.h),
                      Row(children: [
                        Icon(Iconsax.clock, color: ColorManager.olive2),
                        SizedBox(
                          width: FontSize.s14,
                        ),
                        Text("01:00 PM",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                      SizedBox(height: 16.h),
                      Row(children: [
                        Icon(Icons.location_on_outlined,
                            color: ColorManager.olive2),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text("Zagazig",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                      SizedBox(height: 16.h),
                      Row(children: [
                        Icon(Iconsax.video, color: ColorManager.olive2),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text("9 Lesson",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                      SizedBox(height: 11.h),
                      Row(children: [
                        Icon(Iconsax.ticket, color: ColorManager.olive2),
                        SizedBox(
                          width: FontSize.s14,
                        ),
                        Text("EGP 99.00",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s12,
                              fontWeight: FontWeightManager.regular,
                            )),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    top: 24.h,
                    bottom: 24.h,
                    right: 24.w,
                  ),
                  child: CustomButton(
                    text: "Book Now",
                    fun: () {
                      context.pushReplacement(AppRouter.paymentpath);
                    },
                    width: 327.w,
                    height: 56.h,
                    btncolor: ColorManager.olive2,
                    textcolor: ColorManager.white2,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.w, right: 7.w, bottom: 24.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About the Workshop",
                            style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s16,
                                fontWeight: FontWeightManager.medium)),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                  maxLines: 5,
                                  "You've heard a lot about crochet and you've asked yourself why you should learn to crochet? It is old, but it is always a medicine, and it also causes many psychological benefits, That's why it will take you step by step",
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: ColorManager.grey2,
                                      fontSize: FontSize.s12,
                                      fontWeight: FontWeightManager.thin)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                    height: 1.5.h,
                                    fontSize: FontSize.s12,
                                    fontWeight: FontWeightManager.thin,
                                    color: ColorManager.olive2),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                            "By the end of this online workshop, you will be able to",
                            style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s16,
                                fontWeight: FontWeightManager.medium)),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                            maxLines: 5,
                            "Identify the most important materials and tools used to make crochet; In addition to learning about the most famous abbreviations and stitch symbols in the pattern, which help you make different shapes easily.",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: ColorManager.grey2,
                                fontSize: FontSize.s12,
                                fontWeight: FontWeightManager.thin)),
                        Padding(
                          padding: EdgeInsets.only(left: 28.w, top: 12.h),
                          child: Row(children: [
                            Image.asset("assets/images/Ellipse 18.png",
                                height: 80.h, width: 80.w),
                            SizedBox(
                              width: 18.w,
                            ),
                            Image.asset("assets/images/Ellipse 20.png",
                                height: 80.h, width: 80.w),
                            SizedBox(
                              width: 18.w,
                            ),
                            Image.asset("assets/images/Ellipse 19.png",
                                height: 80.h, width: 80.w),
                          ]),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                            maxLines: 5,
                            "Applying variables using crochet from scratch and step-by-step processing, such as: making a crochet stand, how to make a circle, and the circular unit;  In addition to learning to connect these units.",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: ColorManager.grey2,
                                fontSize: FontSize.s12,
                                fontWeight: FontWeightManager.thin)),
                        SizedBox(height: 24.h),
                        Text("About the Crafter",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: FontSize.s16,
                                fontWeight: FontWeightManager.medium)),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text("Salma, our Crochet Instructor from Zagazig",
                            style: TextStyle(
                                color: ColorManager.grey2,
                                fontSize: FontSize.s12,
                                fontWeight: FontWeightManager.thin)),
                        SizedBox(
                          height: 17.h,
                        ),
                        Container(
                          width: 335.w,
                          height: 152.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ColorManager.grey2,
                              )),
                          padding: EdgeInsetsDirectional.only(
                              top: 11.h, start: 16.w, bottom: 20.h, end: 16.w),
                          child: Column(
                            children: [
                              Row(children: [
                                Image.asset(
                                  "assets/images/Ellipse 17.png",
                                  height: 55.h,
                                  width: 55.w,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  children: [
                                    Text("Salma Mostafa",
                                        style: TextStyle(
                                            color: ColorManager.black,
                                            fontSize: FontSize.s16,
                                            fontWeight:
                                                FontWeightManager.medium)),
                                    Text("Crochet Instructor",
                                        style: TextStyle(
                                            color: ColorManager.grey2,
                                            fontSize: FontSize.s12,
                                            fontWeight:
                                                FontWeightManager.thin)),
                                  ],
                                ),
                                SizedBox(width: 77.w),
                                Column(children: [
                                  Icon((Icons.favorite),
                                      color: ColorManager.red),
                                  Text("1,773",
                                      style: TextStyle(
                                          fontSize: FontSize.s7,
                                          fontWeight: FontWeightManager.thin,
                                          color: ColorManager.grey2)),
                                ]),
                              ]),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                      text: 'Message',
                                      fun: () {
                                        context.pushReplacement('/myCourses');
                                      },
                                      textcolor: ColorManager.olive2,
                                      width: 145.w,
                                      height: 46.h,
                                      btncolor: ColorManager.white2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                      text: "Following",
                                      textcolor: ColorManager.white2,
                                      width: 145.w,
                                      height: 46.h,
                                      btncolor: ColorManager.olive2,
                                      fun: () {
                                        context.pushReplacement('/myCourses');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Verified reviews",
                                style: TextStyle(
                                  fontSize: FontSize.s16,
                                  fontWeight: FontWeightManager.medium,
                                  color: ColorManager.black,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Column(
                                children: [
                                  Text(
                                      "We only show reviews from customers who have paid for attended this course",
                                      style: TextStyle(
                                          color: ColorManager.grey2,
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeightManager.thin)),
                                ],
                              )
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            //physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return VerifiedReviewsCourses();
                            }),
                        CustomButton(
                            text: "Load More",
                            fun: () {},
                            height: 56.h,
                            width: 327.w,
                            btncolor: ColorManager.olive2,
                            textcolor: ColorManager.white2)
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
