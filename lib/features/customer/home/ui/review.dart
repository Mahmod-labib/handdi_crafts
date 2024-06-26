import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../../widgets/custom_text_field.dart';
import '../widget/verified_reviews_courses.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(        backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
            size: 24.r,
          ),
          onPressed: () {
            context.pushReplacement(AppRouter.crafterprofilepath);
          },
        ),
        title: Text("Review" , style: TextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium , ),),

      ),
     body:Padding(
       padding:  EdgeInsets.all(24.0.r),
       child: Column(
         children: [
           Row(
             children: [
               Text("What is Your Rate?" , style: TextStyle(
                 fontSize: FontSize.s16,
                 color: ColorManager.black,
                 fontWeight: FontWeightManager.regular , ),),
             ],
           ),           SizedBox(height: 16.h,),

           RatingBar(
               size: 20,
               maxRating: 5,
               initialRating: 0,
               halfFilledColor: ColorManager.yellow,
               direction: Axis.horizontal,
               filledColor: ColorManager.yellow,
               filledIcon: Icons.star,
               emptyIcon: Icons.star, onRatingChanged: (double ) {  },),

         Padding(
           padding:  EdgeInsets.only(top: 16.h,bottom: 20.h ,),
           child: Divider(color: ColorManager.white4,thickness: 1.5,),
         ),
           Row(
             children: [
               Text("Comment" , style: TextStyle(
                 fontSize: FontSize.s16,
                 color: ColorManager.black,
                 fontWeight: FontWeightManager.regular , ),),
             ],
           ),
           SizedBox(height: 16.h,),

           SizedBox(
             width: 327.w,
             height: 130.h,
             child: CustomTextFormField(
               suffixIcon: Icon(Icons.camera_alt_rounded , color: ColorManager.grey2,),
               contentPadding: EdgeInsets.all(15.r),
               maxLines: 10,
               hintText: "Write a comment...",
               hintStyle:  TextStyle(color:ColorManager.grey2 ,fontWeight: FontWeightManager.thin ,
                 fontSize: FontSize.s14,
               ),
             ),
           ),
           SizedBox(height: 20.h,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Customers’ Reviews(1,773)" , style: TextStyle(
                 fontSize: FontSize.s16,
                 color: ColorManager.black,
                 fontWeight: FontWeightManager.regular , ),),

               Text("view all" , style: TextStyle(
                 fontSize: FontSize.s12,
                 color: ColorManager.olive2,
                 fontWeight: FontWeightManager.regular , ),),
               SizedBox(height: 16.h,),
             ],
           ),
           Expanded(
             child: ListView.builder(
                 shrinkWrap: true,
                 //physics: NeverScrollableScrollPhysics(),
                 scrollDirection: Axis.vertical,
                 itemCount: 8,
                 itemBuilder: (context, index) {
                   return VerifiedReviewsCourses();
                 }),
           ),

         ],
       ),
     ),

    );
  }
}
