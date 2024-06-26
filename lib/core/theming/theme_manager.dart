import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/styles_manager.dart';
import 'package:flutter_application_1/core/theming/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.olive1,
    primaryColorLight: ColorManager.olive2,
    primaryColorDark: ColorManager.black,
    disabledColor: ColorManager.grey2,

    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.white,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s18, color: ColorManager.black)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        buttonColor: ColorManager.olive1,
        splashColor: ColorManager.olive2),

    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s16),
            primary: ColorManager.olive1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s32)))),

    // text theme
    textTheme: TextTheme(
        displayLarge:
            getBoldtStyle(color: ColorManager.black, fontSize: FontSize.s24),
        headlineLarge: getSemiBoldtStyle(
            color: ColorManager.black, fontSize: FontSize.s22),
        headlineMedium:
            getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
        titleMedium:
            getMediumStyle(color: ColorManager.black, fontSize: FontSize.s18),
        bodyLarge:
            getRegularStyle(color: ColorManager.black, fontSize: FontSize.s22),
        bodySmall:
            getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16)),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManager.black, fontSize: FontSize.s14),
        errorStyle:
            getRegularStyle(color: ColorManager.error, fontSize: FontSize.s16),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.white, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s24))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s24))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s24))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.white, width: AppSize.s1),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSize.s24)))),
  );
}
