import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/themes/app_colors.dart';

class AppStyles {
  static TextStyle textStyle({
    Color? color,
    Color? decorationColor,
    double? size,
    String? family,
    FontWeight? weight,
    double height = 1.3,
    bool? isItalic = false,
    TextDecoration? decoration,
    List<Shadow>? shadow,
  }) {
    return TextStyle(
      color: color ?? AppColors.c021A1A,
      inherit: false,
      fontSize: (size ?? 14).sp,
      fontFamily: family ?? "sstArabic",
      fontWeight: weight ?? FontWeight.w500,
      height: height,
      fontStyle: isItalic! ? FontStyle.italic : null,
      textBaseline: TextBaseline.alphabetic,
      decoration: decoration,
      shadows: shadow,
      decorationColor: decorationColor,
    );
  }
}
