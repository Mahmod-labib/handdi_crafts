import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/routes_manager.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [ColorManager.olive1, ColorManager.olive2],
              ),
            ),
          ),
          Positioned(
            top: 69.h,
            right: 7.w,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    context.pushReplacement(AppRouter.emptywishlistpath);
                  },
                  child: SvgPicture.asset("assets/images/Heart-light.svg"),
                ),
                SizedBox(
                  width: 15.w,
                ),
                InkWell(
                  onTap: () {
                    context.pushReplacement(AppRouter.emptycartpath);
                  },
                  child: SvgPicture.asset("assets/images/Bag-light.svg"),
                ),
              ],
            ),
          ),
          Positioned(
            top: 82.h,
            left: 147.w,
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.transparent,
                      child: Image.asset("assets/images/crafter_account_img.png"),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 12.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorManager.white2,
                            width: 2.w,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Nada Soliman",
                  style: TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: FontSize.s18,
                    color: ColorManager.white2,
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
              maxChildSize: 0.65,
              initialChildSize: 0.65,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(


                child: Container(
                  width: 375.w,
                  decoration: BoxDecoration(
                    color: ColorManager.white2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.r),
                      topLeft: Radius.circular(30.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        child: ListTile(
                            contentPadding: EdgeInsets.all(13.r),
                            leading: CircleAvatar(
                              backgroundColor: ColorManager.olive2,
                              child: SizedBox(
                                child: SvgPicture.asset(
                                    "assets/images/Notification-light.svg"),
                              ),
                            ),
                            title: Text(
                              "Notifications",
                              style: TextStyle(
                                color: ColorManager.black,
                                fontSize: FontSize.s16,
                                fontWeight: FontWeightManager.medium,
                              ),
                            ),
                            trailing: Switch(
                              onChanged: toggleSwitch, value: isSwitched,
                              activeColor: ColorManager.beige,
                              inactiveThumbColor: ColorManager.white4,
                            )
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.notficationpath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset(
                                  "assets/images/Document.svg"),
                            ),
                          ),
                          title: Text(
                            "My Orders",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {},
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.my_orderspath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset(
                                  "assets/images/icon-park-outline_return.svg"),
                            ),
                          ),
                          title: Text(
                            "Returns",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {
                            },
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.returnspath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset(
                                  "assets/images/mage_credit-card.svg"),
                            ),
                          ),
                          title: Text(
                            "Credits",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {},
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.mycreditpath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset("assets/images/Ticket.svg"),
                            ),
                          ),
                          title: Text(
                            "Coupons",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {},
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.couponspath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset(
                                  "assets/images/Location.svg"),
                            ),
                          ),
                          title: Text(
                            "Address",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {},
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.addresspath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      InkWell(

                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.olive2,
                            child: SizedBox(
                              child: SvgPicture.asset("assets/images/Wallet.svg"),
                            ),
                          ),
                          title: Text(
                            "Payment Methods",
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: ColorManager.black,),
                            onPressed: () {},
                          ),
                        ),
                        onTap: (){
                          context.pushReplacement(AppRouter.paymentpath);
                        },
                      ),
                      Divider(color: ColorManager.white),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: ColorManager.olive2,
                          child: SizedBox(
                            child: SvgPicture.asset(
                                "assets/images/carbon_ibm-watson-language-translator.svg"),
                          ),
                        ),
                        title: Text(
                          "App Language",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s16,
                            fontWeight: FontWeightManager.medium,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,
                            color: ColorManager.black,),
                          onPressed: () {},
                        ),
                      ),
                      Divider(color: ColorManager.white),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: ColorManager.olive2,
                          child: SizedBox(
                            child: Icon(
                              Icons.login_outlined, color: ColorManager.white2,
                              size: 22.r,),
                          ),
                        ),
                        title: Text(
                          "LogOut",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s16,
                            fontWeight: FontWeightManager.medium,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,
                            color: ColorManager.black,),
                          onPressed: () {},
                        ),
                      ),
                      Divider(color: ColorManager.white),
                    ],
                  ),
                ));
            }),
            ],
      ),
    );
  }
}
