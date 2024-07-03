import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({
    Key? key,
    this.alignment,
    this.width,
    this.height,
    this.value,
    this.items,
    this.onChanged,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.prefixConstraints,
    this.suffixIcon,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final double? height;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final ValueChanged<String?>? onChanged;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final BoxConstraints? prefixConstraints;
  final Widget? suffixIcon;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: dropDownFieldWidget(context),
    )
        : dropDownFieldWidget(context);
  }

  Widget dropDownFieldWidget(BuildContext context) => SizedBox(
    width: width ?? 327.w,
    height: 56.h,
    child: DropdownButtonFormField<String>(
      value: value,
      items: items,
      onChanged: onChanged,
      decoration: decoration,
      validator: validator,
    ),
  );

  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ??
        TextStyle(
          fontSize: FontSize.s16,
          fontWeight: FontWeightManager.regular,
          color: ColorManager.grey2,
        ),
    prefixIcon: prefixIcon,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffixIcon,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ??
        EdgeInsets.only(
          top: 16.h,
          left: 24.w,
          bottom: 24.h,right: 24.w,
        ),
    fillColor: fillColor ?? ColorManager.white5,
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(
            color: ColorManager.white,
            width: 1,
          ),
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(
            color: ColorManager.white,
            width: 1,
          ),
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(
            color: ColorManager.white,
            width: 1,
          ),
        ),
  );
}
