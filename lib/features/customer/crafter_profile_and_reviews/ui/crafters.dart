import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_search_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/font_manager.dart';
import '../../../../core/theming/routes_manager.dart';
import '../../../crafter/crafterprofile&reviews/widget/button.dart';

class Crafters extends StatelessWidget {
  const Crafters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
        icon: Icon(
        Icons.arrow_back_ios,
        color: ColorManager.black2,
        size: 24.r,
    ),
    onPressed: () {
    context.pushReplacement(AppRouter.customerhomepath);
    },
    ),
    title: Text(
    "Crafters",
    style: TextStyle(
    fontSize: FontSize.s18,
    color: ColorManager.black,
    fontWeight: FontWeightManager.medium,
    ),
    ),
    actions: [
    SvgPicture.asset("assets/images/heart.svg"),
    SizedBox(width: 15.w),
    SvgPicture.asset("assets/images/Bag.svg"),
    SizedBox(width: 18.w),
    ],
  ),
  body:Column(
    children: [
      SizedBox(height: 31.h,),
      const CustomSearchField(),
     Expanded(
       child: ListView.builder(
           itemCount: 8,
           itemBuilder: (context , index){
         return Padding(
           padding:  EdgeInsets.all(20.0.r),
           child: Container(
             width: 355.w,
             height: 152.h,
             decoration: BoxDecoration(
               color: ColorManager.white2,
               borderRadius: BorderRadius.circular(10.r),
               boxShadow: [
                 BoxShadow(
                   color: ColorManager.grey2.withOpacity(0.5),
                   spreadRadius: 5,
                   blurRadius: 7,
                   offset: const Offset(0, 3), // changes position of shadow
                 ),
               ],
             ),
             child: Center(
               child: Padding(
                 padding:  EdgeInsets.all(8.r),
                 child: Column(
                   children: [
                     Row(

//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                       children: [
                         InkWell(
                           onTap: (){
                             context.pushReplacement(AppRouter.crafterprofilepath);
                           },
                           child: const CircleAvatar(

                             backgroundImage: AssetImage("assets/images/Ellipse 17.png"),

                           ),
                         ),
                         InkWell(
                           onTap: (){
                             context.pushReplacement(AppRouter.crafterprofilepath);
                           },
                           child: Column(
                             children: [
                               Text("Salma Mostafa" , style: TextStyle(fontSize:FontSize.s18 , fontWeight: FontWeightManager.medium ,
                               color: ColorManager.black
                               ),),
                               Text("Crochet Instructor" , style: TextStyle(fontSize:FontSize.s12 , fontWeight: FontWeightManager.regular ,
                                   color: ColorManager.grey2
                               ),),
                             ],
                           ),
                         ),
                         IconButton(icon: const Icon(Icons.favorite), color: ColorManager.error, onPressed: () {  },),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         CustomButton(
                             
                             text: "Message", onPressed: (){}, height: 46.h, width: 125.w, backgroundColor: ColorManager.olive2, textColor: ColorManager.white2,
                           fontSize:FontSize.s14,fontWeight: FontWeightManager.medium ,),
                         SizedBox(width: 13.w,),
                         CustomButton(text: "Follow", onPressed: (){}, height: 46.h, width: 125.w, backgroundColor: ColorManager.white2, textColor: ColorManager.olive2,
                           
                           fontSize: FontSize.s14, fontWeight: FontWeightManager.medium,),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
           ),
         );
       }),
     )
    ],
  ) ,
    );}}