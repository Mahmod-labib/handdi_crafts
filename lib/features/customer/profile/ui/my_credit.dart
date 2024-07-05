import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MyCredit extends StatefulWidget {
  const MyCredit({super.key});

  @override
  State<MyCredit> createState() => _MyCreditState();
}

class _MyCreditState extends State<MyCredit> {
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
            onPressed: () {
              context.pushReplacement(AppRouter.profilepath);
            },
          )),
      body: Padding(
        padding :EdgeInsets.only(left: 20.w ,right: 28.w , top: 8.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Row(
            children: [
              Text(
                "Hello ",
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
              ),
            ],
          ),

          Row(
            children: [
              Text(
                "Nada Soliman",
                style: TextStyle(
                    fontSize: FontSize.s24,
                    color: ColorManager.grey5,
                    fontWeight: FontWeightManager.bold),
              ),
            ],
          ),
          SizedBox(height: 24.h,),
          Row(
            children: [
              Container(
                width: 327.w,
                height: 72.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorManager.olive2, // Set the border color
                    width: 2.0, // Set the border width
                  ),

                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 26.w ,top: 16.h ,bottom: 16.h ),
                    child: Column(
                      children: [
                        Text("Available balance: " , style: TextStyle(fontSize: FontSize.s14 ,
                        fontWeight: FontWeightManager.regular , color: ColorManager.black,
                        ),),
                        Text("EGP 0.00" , style: TextStyle(fontSize: FontSize.s16 ,
                          fontWeight: FontWeightManager.medium , color: ColorManager.black,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
         SizedBox(height: 24.h,),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorManager.olive2,
                    child: SizedBox(
                      child: SvgPicture.asset(
                          "assets/images/bank-transfer.svg"),
                    ),
                  ),
                  Text("Bank transfer" , style: TextStyle(fontSize: FontSize.s12 ,
                    fontWeight: FontWeightManager.regular , color: ColorManager.black,
                  ),),
                ],
              ),
            ],
          ),

          Padding(
            padding:  EdgeInsets.all(22.0.r),
            child: Divider(color: ColorManager.white4,),
          ),

          Text("Recent Transactions" , style: TextStyle(fontSize: FontSize.s18 ,
            fontWeight: FontWeightManager.medium , color: ColorManager.black,
          ),),
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Returned Products" , style: TextStyle(fontSize: FontSize.s16 ,
                    fontWeight: FontWeightManager.regular , color: ColorManager.black,
                  ),),
                  Text("Apr 10, 2024" , style: TextStyle(fontSize: FontSize.s13 ,
                    fontWeight: FontWeightManager.thin , color: ColorManager.grey4,
                  ),),

                ],
              ),
              Text("+EGP 1.250" ,style: TextStyle(fontSize: FontSize.s16 ,
                fontWeight: FontWeightManager.medium , color: ColorManager.olive2,
              ),),
        ]),
          SizedBox(height: 16.h,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Purchased Products" , style: TextStyle(fontSize: FontSize.s16 ,
                      fontWeight: FontWeightManager.regular , color: ColorManager.black,
                    ),),
                    Text("Apr 1, 2024" , style: TextStyle(fontSize: FontSize.s13 ,
                      fontWeight: FontWeightManager.thin , color: ColorManager.grey4,
                    ),),

                  ],
                ),
                Text("-EGP 2.400" ,style: TextStyle(fontSize: FontSize.s16 ,
                  fontWeight: FontWeightManager.medium , color: ColorManager.red,
                ),),]),
          SizedBox(height: 16.h,),

          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Cash Back(Credit \n Card)" , style: TextStyle(fontSize: FontSize.s16 ,
                        fontWeight: FontWeightManager.regular , color: ColorManager.black,
                      ),),
                      Text("Mar 9, 2024" , style: TextStyle(fontSize: FontSize.s13 ,
                        fontWeight: FontWeightManager.thin , color: ColorManager.grey4,
                      ),),

                    ],
                  ),
                  Text("-EGP 2.400" ,style: TextStyle(fontSize: FontSize.s16 ,
                    fontWeight: FontWeightManager.medium , color: ColorManager.red,
                  ),),
                ],
              ),
          SizedBox(height: 16.h,),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Refund Failed(Credit\n Card)" , style: TextStyle(fontSize: FontSize.s16 ,
                      fontWeight: FontWeightManager.regular , color: ColorManager.black,
                    ),),
                    Text("Mar 10, 2024" , style: TextStyle(fontSize: FontSize.s13 ,
                      fontWeight: FontWeightManager.thin , color: ColorManager.grey4,
                    ),),

                  ],
                ),
                Text("+EGP 2.400" ,style: TextStyle(fontSize: FontSize.s16 ,
                  fontWeight: FontWeightManager.medium , color: ColorManager.olive2,
                ),),
              ]),
        ]),
      ),

    );
  }
}
