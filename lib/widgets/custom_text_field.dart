import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.height,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.expands = false,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final double? height;
  final EdgeInsets? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final bool expands;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
      alignment: widget.alignment!,
      child: textFormFieldWidget(context),
    )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
    width: widget.width ?? double.infinity,
    height: widget.height,
    child: TextFormField(
      scrollPadding: widget.scrollPadding ??
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: _controller,
      expands: widget.expands,
      focusNode: _focusNode,
      autofocus: widget.autofocus,
      obscureText: widget.obscureText,
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText ?? "",
        hintStyle: widget.hintStyle,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        isDense: true,
        contentPadding: widget.contentPadding,
        fillColor: widget.fillColor,
        filled: widget.filled,
        border: widget.borderDecoration,
        enabledBorder: widget.borderDecoration,
        focusedBorder: widget.borderDecoration,
      ),
      validator: widget.validator,
    ),
  );
}
