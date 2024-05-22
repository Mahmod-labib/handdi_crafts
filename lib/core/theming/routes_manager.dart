import 'package:flutter_application_1/features/crafter/Intro/ui/intro.dart';
import 'package:flutter_application_1/features/crafter/login/ui/login.dart';
import 'package:flutter_application_1/features/crafter/signup/ui/signup.dart';
import 'package:flutter_application_1/features/customer/signup/ui/signup.dart';
import 'package:flutter_application_1/features/delivery/Intro/ui/intro.dart';
import 'package:flutter_application_1/features/delivery/login/ui/login.dart';
import 'package:flutter_application_1/features/delivery/signup/ui/signup.dart';
import 'package:flutter_application_1/features/on_boarding/ui/intro_page_1.dart';
import 'package:flutter_application_1/features/on_boarding/ui/intro_page_3.dart';
import 'package:go_router/go_router.dart';

import '../../features/customer/login/ui/login.dart';
import '../../features/on_boarding/ui/intro_page_2.dart';
import '../../features/on_boarding/ui/intro_page_4.dart';
import '../../features/on_boarding/ui/intro_page_5.dart';
import '../../features/on_boarding/ui/intro_page_6.dart';
import '../../features/on_boarding/ui/intro_page_7.dart';
import '../../features/on_boarding/ui/on_boarding.dart';
import '../../features/on_boarding/ui/splash.dart';

class AppRouter {
  static const initialPath = "/";
  static const customerloginPath = "/customerlogin";
  static const customersignupPath = "/customersignup";

  static const onboardingPath = "/onBoarding";
  static const introPage1Path = "/introPage1";
  static const introPage2Path = "/introPage2";
  static const introPage3Path = "/introPage3";
  static const introPage4Path = "/introPage4";
  static const introPage5Path = "/introPage5";
  static const introPage6Path = "/introPage6";
  static const introPage7Path = "/introPage7";
  static const crafterintropagepath = "/crafterintropage";
  static const crafterloginPath = "/crafterlogin";
  static const craftersignupPath="/craftersignup";
  static const deliveryintropagepath = "/deliveryintropage";
  static const deliveryloginPath = "/deliveryrlogin";
  static const deliverysignupPath="/deliverysignup";

}

GoRouter router(){
  return GoRouter(routes: [
    GoRoute(path: AppRouter.initialPath ,  builder:((context , state)=>const SplashScreen()) ),
    GoRoute(path: AppRouter.introPage1Path ,  builder:((context , state)=>const IntroPage1()) ),
    GoRoute(path: AppRouter.introPage2Path ,  builder:((context , state)=>const IntroPage2()) ),
    GoRoute(path: AppRouter.introPage3Path ,  builder:((context , state)=>const IntroPage3()) ),
    GoRoute(path: AppRouter.introPage4Path ,  builder:((context , state)=>const IntroPage4()) ),
    GoRoute(path: AppRouter.introPage5Path ,  builder:((context , state)=>const IntroPage5()) ),
    GoRoute(path: AppRouter.introPage6Path ,  builder:((context , state)=>const IntroPage6()) ),
    GoRoute(path: AppRouter.introPage7Path ,  builder:((context , state)=>const IntroPage7()) ),
    GoRoute(path: AppRouter.onboardingPath ,  builder:((context , state)=>const OnBoarding()) ),
    GoRoute(path: AppRouter.customerloginPath ,  builder:((context , state)=>const LoginScreen()) ),
    GoRoute(path: AppRouter.crafterintropagepath ,  builder:((context , state)=>const CrafterIntroPage()) ),
    GoRoute(path: AppRouter.crafterloginPath ,  builder:((context , state)=>const CrafterLoginScreen()) ),
    GoRoute(path: AppRouter.customersignupPath ,  builder:((context , state)=>const CustomerSignUp()) ),
    GoRoute(path: AppRouter.craftersignupPath ,  builder:((context , state)=>const CrafterSignUp()) ),
    GoRoute(path: AppRouter.deliverysignupPath ,  builder:((context , state)=>const DeliverySignUp()) ),
    GoRoute(path: AppRouter.deliveryloginPath ,  builder:((context , state)=>const DeliveryLoginScreen()) ),
    GoRoute(path: AppRouter.deliveryintropagepath ,  builder:((context , state)=>const DeliveryIntroPage()) ),


    // GoRoute(path: '/signUpDelivery' ,  builder:((context , state)=> SignUpDelivery()) ),
    //GoRoute(path: '/signUpCrafter' ,  builder:((context , state)=> SignUpCrafter()) ),
    //GoRoute(path: '/signUp' ,  builder:((context , state)=> SignUpCustomer()) ),
    //GoRoute(path: '/verifiycode' ,  builder:((context , state)=> const VerifiyCode()) ),
    //GoRoute(path: '/customerCategory' ,  builder:((context , state)=>const CustomerCategory()) ),
    //GoRoute(path: '/candleCategory' ,  builder:((context , state)=>const CandlesCustomer()) ),
    //GoRoute(path: '/customerMaterial' ,  builder:((context , state)=>const CustomerMaterial()) ),
    //GoRoute(path: '/productDetailsSimple' ,  builder:((context , state)=>const ProductDetailsSimple()) ),
    //GoRoute(path: '/customerHomePage' ,  builder:((context , state)=>const CustomerHomePage()) ),
    //GoRoute(path: '/productDetailsComplex' ,  builder:((context , state)=>const ProductDetailsComplex()) ),
    //GoRoute(path: '/coursesAndWorkshop' ,  builder:((context , state)=>const CoursesAndWorkshop()) ),
    //GoRoute(path: '/bookingCourse' ,  builder:((context , state)=>const BookingCourse()) ),
    //GoRoute(path: '/courseLessons' ,  builder:((context , state)=>const CourseLessons()) ),
    //GoRoute(path: '/myCourses' ,  builder:((context , state)=>const MyCourses()) ),
    //GoRoute(path: '/courseLessons' ,  builder:((context , state)=>const CourseLessons()) ),
    //GoRoute(path: '/playLesson' ,  builder:((context , state)=>const PlayLesson()) ),
    //GoRoute(path: '/landing' ,  builder:((context , state)=> Landing()) ),

  ]);
}
