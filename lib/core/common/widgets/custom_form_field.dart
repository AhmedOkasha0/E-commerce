
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final TextStyle? inPutTextStyle;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final String? hintText;
  final Widget? prefixIcon;
  final Color? hintColor;
  final double? hintSize;
  final FontWeight? hintWeight;
  final Color? fillColor;
  final Color? borderColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.contentPadding,
    this.enabledBorder,
    this.hintStyle,
    this.inPutTextStyle,
    this.isObscureText,
    this.prefixIcon,
    this.hintText,
    this.hintColor,
    this.hintSize,
    this.hintWeight,
    this.fillColor,
    this.borderColor,
    this.controller,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: isObscureText ?? false,
      textAlign: TextAlign.right,
      style: AppStyles.textStyle(
        color: AppColors.c545454,
        size: 14,
        weight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? Colors.white,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.c25BCBD,
        suffixIcon: suffixIcon,
        isDense: true,
        hintText: hintText,
        hintStyle: hintStyle ??
            AppStyles.textStyle(
              size: hintSize ?? 14,
              color: hintColor ?? AppColors.c021A1AB2,
              weight: hintWeight ?? FontWeight.w500,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.cDDDDDD, width: 1.3.w)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(color: AppColors.c25BCBD, width: 1.3.w)),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
      ),
    );
  }
}
