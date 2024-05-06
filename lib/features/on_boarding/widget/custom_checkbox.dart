import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final Function(bool) onChanged;
  final Color? borderColor; // Make borderColor nullable

  const CustomCheckbox({
    Key? key,
    required this.isChecked,
    required this.onChanged,
    this.borderColor,
  }) : super(key: key);

  @override
  CustomCheckboxState createState() => CustomCheckboxState();
}

class CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () {
        widget.onChanged(!widget.isChecked);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2,
            color: widget.borderColor ?? Colors.black, // Access borderColor using widget
          ),
        ),
        width: 24.w,
        height: 24.h,
        child: widget.isChecked
            ?  Center(
          child: Text(
            '✓',
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        )
            : Container(),
      ),
    );
  }
}
