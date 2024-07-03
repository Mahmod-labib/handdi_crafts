import 'package:flutter_application_1/features/crafter/Intro/ui/intro.dart';
import 'package:flutter_application_1/features/crafter/login/ui/forgot_password.dart';
import 'package:flutter_application_1/features/crafter/login/ui/login.dart';
import 'package:flutter_application_1/features/crafter/login/ui/reset_password.dart';
import 'package:flutter_application_1/features/crafter/signup/ui/signup.dart';
import 'package:flutter_application_1/features/customer/home/ui/checkout.dart';
import 'package:flutter_application_1/features/customer/home/ui/courses_lessons.dart';
import 'package:flutter_application_1/features/customer/home/ui/crafter_profile.dart';
import 'package:flutter_application_1/features/customer/home/ui/crafts.dart';
import 'package:flutter_application_1/features/customer/home/ui/empty_cart.dart';
import 'package:flutter_application_1/features/customer/home/ui/home.dart';
import 'package:flutter_application_1/features/customer/home/ui/materials.dart';
import 'package:flutter_application_1/features/customer/home/ui/mycourses.dart';
import 'package:flutter_application_1/features/customer/home/ui/payment.dart';
import 'package:flutter_application_1/features/customer/home/ui/payment_order_done.dart';
import 'package:flutter_application_1/features/customer/home/ui/product_details.dart';
import 'package:flutter_application_1/features/customer/home/ui/products.dart';
import 'package:flutter_application_1/features/customer/home/ui/profile.dart';
import 'package:flutter_application_1/features/customer/home/ui/review.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_bnb.dart';
import 'package:flutter_application_1/features/customer/signup/ui/signup.dart';
import 'package:flutter_application_1/features/customer/signup/ui/verify_email_sign_up.dart';
import 'package:flutter_application_1/features/delivery/Intro/ui/intro.dart';
import 'package:flutter_application_1/features/delivery/login/ui/login.dart';
import 'package:flutter_application_1/features/delivery/signup/ui/signup.dart';
import 'package:flutter_application_1/features/on_boarding/ui/intro_page_1.dart';
import 'package:flutter_application_1/features/on_boarding/ui/intro_page_3.dart';
import 'package:go_router/go_router.dart';

import '../../features/crafter/login/ui/verify_email_forgot_password.dart';
import '../../features/crafter/signup/ui/verify_email_sign_up.dart';
import '../../features/customer/home/ui/cart.dart';
import '../../features/customer/home/ui/course_details_booking.dart';
import '../../features/customer/home/ui/courses.dart';
import '../../features/customer/home/ui/crafters.dart';
import '../../features/customer/home/ui/empty_wishlist.dart';
import '../../features/customer/home/ui/landing.dart';
import '../../features/customer/home/ui/play_lessons.dart';
import '../../features/customer/home/ui/products_of_category.dart';
import '../../features/customer/home/ui/wishlist.dart';
import '../../features/customer/login/ui/forgot_password.dart';
import '../../features/customer/login/ui/login.dart';
import '../../features/customer/login/ui/reset_password.dart';
import '../../features/customer/login/ui/verify_email_forgot_password.dart';
import '../../features/delivery/login/ui/forgot_password.dart';
import '../../features/delivery/login/ui/reset_password.dart';
import '../../features/delivery/login/ui/verify_email_forgot_password.dart';
import '../../features/delivery/signup/ui/verify_email_sign_up.dart';
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
  static const craftersignupPath = "/craftersignup";
  static const deliveryintropagepath = "/deliveryintropage";
  static const deliveryloginPath = "/deliveryrlogin";
  static const deliverysignupPath = "/deliverysignup";
  static const deliveryforgotpasswordpath = "/deliveryforgotpasswordpath";
  static const crafterforgotpasswordpath = "/crafterforgotpasswordpath";
  static const customerforgotpasswordpath = "/customerforgotpasswordpath";
  static const crafterverifiyemailforgotpasswordpath =
      "/crafterverifiyemailforgotpasswordpath";
  static const customerverifiyemailforgotpasswordpath =
      "/customerverifiyemailforgotpasswordpath";
  static const deliveryverifiyemailforgotpasswordpath =
      "/deliveryverifiyemailforgotpasswordpath";
  static const crafterresetpasswordpath = "/crafterresetpasswordpath";
  static const customerresetpasswordpath = "/customerresetpasswordpath";
  static const deliveryresetpasswordpath = "/deliveryresetpasswordpath";
  static const crafterverifiyemailsignuppath = "/crafterverifiyemailsignuppath";
  static const customerverifiyemailsignuppath =
      "/customerverifiyemailsignuppath";
  static const deliveryverifiyemailsignuppath =
      '/deliveryverifiyemailsignuppath';
  static const bnbpath = "/bnbpath";
  static const customerhomepath = "/customerhomepath";
  static const landingpath = "/landingpath";
  static const craftspath = "/craftspath";
  static const materialspath = "/materialspath";
  static const productsspath = "/productsspath";
  static const craftersspath = "/crafersspath";
  static const coursesspath = "/coursesspath";
  static const coursebookingpath = "/coursebookingpath";
  static const paymentpath = "/paymentpath";
  static const paymentsuccesspath = "/paymentsuccesspath";
  static const categoryproductsspath = "/categoryproductsspath";
  static const productdetailspath ="/productdetailspath";
  static const emptycartpath ="/emptycartpath";
  static const cartpath ="/cartpath";
  static const checkoutpath="/checkoutpath";
  static const crafterprofilepath="/crafterprofilepath";
  static const reviewpath="/reviewpath";
  static const emptywishlistpath ="/emptywishlistpath";
  static const wishlistpath ="/wishlistpath";
  static const mycoursespath ="/mycoursespath";
  static const courseslessonspath ="/courseslessonspath";
  static const  playlessonpath="/playlessonpath";
  static const profilepath="/profilepath";

}

GoRouter router() {
  return GoRouter(routes: [
    GoRoute(
        path: AppRouter.initialPath,
        builder: ((context, state) => const SplashScreen())),
    GoRoute(
        path: AppRouter.introPage1Path,
        builder: ((context, state) => const IntroPage1())),
    GoRoute(
        path: AppRouter.introPage2Path,
        builder: ((context, state) => const IntroPage2())),
    GoRoute(
        path: AppRouter.introPage3Path,
        builder: ((context, state) => const IntroPage3())),
    GoRoute(
        path: AppRouter.introPage4Path,
        builder: ((context, state) => const IntroPage4())),
    GoRoute(
        path: AppRouter.introPage5Path,
        builder: ((context, state) => const IntroPage5())),
    GoRoute(
        path: AppRouter.introPage6Path,
        builder: ((context, state) => const IntroPage6())),
    GoRoute(
        path: AppRouter.introPage7Path,
        builder: ((context, state) => const IntroPage7())),
    GoRoute(
        path: AppRouter.onboardingPath,
        builder: ((context, state) => const OnBoarding())),
    GoRoute(
        path: AppRouter.customerloginPath,
        builder: ((context, state) => const LoginScreen())),
    GoRoute(
        path: AppRouter.crafterintropagepath,
        builder: ((context, state) => const CrafterIntroPage())),
    GoRoute(
        path: AppRouter.crafterloginPath,
        builder: ((context, state) => const CrafterLoginScreen())),
    GoRoute(
        path: AppRouter.customersignupPath,
        builder: ((context, state) => const CustomerSignUp())),
    GoRoute(
        path: AppRouter.craftersignupPath,
        builder: ((context, state) => const CrafterSignUp())),
    GoRoute(
        path: AppRouter.deliverysignupPath,
        builder: ((context, state) => const DeliverySignUp())),
    GoRoute(
        path: AppRouter.deliveryloginPath,
        builder: ((context, state) => const DeliveryLoginScreen())),
    GoRoute(
        path: AppRouter.deliveryintropagepath,
        builder: ((context, state) => const DeliveryIntroPage())),
    GoRoute(
        path: AppRouter.crafterforgotpasswordpath,
        builder: ((context, state) => const CrafterForgotPassword())),
    GoRoute(
        path: AppRouter.crafterverifiyemailforgotpasswordpath,
        builder: ((context, state) =>
            const CrafterVerifiyEmailForgotPassword())),
    GoRoute(
        path: AppRouter.crafterverifiyemailsignuppath,
        builder: ((context, state) => const CrafterVerifiyEmailSignUp())),
    GoRoute(
        path: AppRouter.crafterresetpasswordpath,
        builder: ((context, state) => const CrafterResetPassword())),
    GoRoute(
        path: AppRouter.customerverifiyemailsignuppath,
        builder: ((context, state) => const CustomerVerifiyEmailSignUp())),
    GoRoute(
        path: AppRouter.customerforgotpasswordpath,
        builder: ((context, state) => const CustomerForgotPassword())),
    GoRoute(
        path: AppRouter.customerverifiyemailforgotpasswordpath,
        builder: ((context, state) =>
            const CustomerVerifiyEmailForgotPassword())),
    GoRoute(
        path: AppRouter.customerresetpasswordpath,
        builder: ((context, state) => const CustomerResetPassword())),
    GoRoute(
        path: AppRouter.deliveryverifiyemailsignuppath,
        builder: ((context, state) => const DeliveryVerifiyEmailSignUp())),
    GoRoute(
        path: AppRouter.deliveryforgotpasswordpath,
        builder: ((context, state) => const DeliveryForgotPassword())),
    GoRoute(
        path: AppRouter.deliveryverifiyemailforgotpasswordpath,
        builder: ((context, state) =>
            const DeliveryVerifiyEmailForgotPassword())),
    GoRoute(
        path: AppRouter.deliveryresetpasswordpath,
        builder: ((context, state) => const DeliveryResetPassword())),
    GoRoute(
        path: AppRouter.bnbpath,
        builder: ((context, state) => const BottomNavBar())),
    GoRoute(
        path: AppRouter.customerhomepath,
        builder: ((context, state) => const CustomerHome())),
    GoRoute(
        path: AppRouter.landingpath,
        builder: ((context, state) => const Landing())),
    GoRoute(
        path: AppRouter.craftspath,
        builder: ((context, state) => const Crafts())),
    GoRoute(
        path: AppRouter.materialspath,
        builder: ((context, state) => const Material())),
    GoRoute(
        path: AppRouter.productsspath,
        builder: ((context, state) => const Products())),
    GoRoute(
        path: AppRouter.craftersspath,
        builder: ((context, state) => const Crafters())),
    GoRoute(
        path: AppRouter.coursesspath,
        builder: ((context, state) => const CoursesAndWorkshop())),
    GoRoute(
        path: AppRouter.coursebookingpath,
        builder: ((context, state) => const BookingCourse())),
    GoRoute(
        path: AppRouter.paymentpath,
        builder: ((context, state) => const Payment())),
    GoRoute(
        path: AppRouter.paymentsuccesspath,
        builder: ((context, state) => const PaymentSuccess())),
    GoRoute(
        path: AppRouter.categoryproductsspath,
        builder: ((context, state) => const CategoryProducts())),
    GoRoute(
        path: AppRouter.productdetailspath,
        builder: ((context, state) => const ProductDetails())),

    GoRoute(
        path: AppRouter.emptycartpath,
        builder: ((context, state) => const EmptyCart())),

    GoRoute(
        path: AppRouter.cartpath,
        builder: ((context, state) => const Cart())),

    GoRoute(
        path: AppRouter.checkoutpath,
        builder: ((context, state) => const Checkout())),

    GoRoute(
        path: AppRouter.crafterprofilepath,
        builder: ((context, state) => const CrafterProfile())),

    GoRoute(
        path: AppRouter.reviewpath,
        builder: ((context, state) => const Review())),

    GoRoute(
        path: AppRouter.emptywishlistpath,
        builder: ((context, state) => const EmptyWishlist())),

    GoRoute(
        path: AppRouter.wishlistpath,
        builder: ((context, state) => const Wishlist())),

    GoRoute(
        path: AppRouter.mycoursespath,
        builder: ((context, state) => const MyCourses())),

    GoRoute(
        path: AppRouter.courseslessonspath,
        builder: ((context, state) => const CourseLessons())),

    GoRoute(
        path: AppRouter.playlessonpath,
        builder: ((context, state) => const PlayLesson())),


    GoRoute(
        path: AppRouter.profilepath,
        builder: ((context, state) => const Profile())),
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
