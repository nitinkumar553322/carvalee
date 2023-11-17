import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.fillColor,
    this.filled = false,
    this.contentPadding,
    this.defaultBorderDecoration,
    this.enabledBorderDecoration,
    this.focusedBorderDecoration,
    this.disabledBorderDecoration,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? fillColor;

  final bool? filled;

  final EdgeInsets? contentPadding;

  final InputBorder? defaultBorderDecoration;

  final InputBorder? enabledBorderDecoration;

  final InputBorder? focusedBorderDecoration;

  final InputBorder? disabledBorderDecoration;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          // autofocus: autofocus!,
          style: textStyle,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
        border: defaultBorderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray100,
                width: 1,
              ),
            ),
        enabledBorder: enabledBorderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray100,
                width: 1,
              ),
            ),
        focusedBorder: focusedBorderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray100,
                width: 1,
              ),
            ),
        disabledBorder: disabledBorderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray100,
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineBlueA700 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueA700,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray800 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray800,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray8001 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray800,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray800TL4 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.gray800,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBluegray10001 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray10001,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBluegray100 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBluegray100TL4 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBluegray100TL41 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray600d9 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.gray600D9,
          width: 1,
        ),
      );
  static UnderlineInputBorder get underLineBluegray100 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray100,
        ),
      );
  static OutlineInputBorder get fillBlack900 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBluegray1002 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillRedA700 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
