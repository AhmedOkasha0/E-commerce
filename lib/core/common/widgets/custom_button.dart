import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final int? hight;
  final int? width;
  final Color? backgroundColor;
  final void Function()? onTap;
  final Color? textColor;
  final Color? borderColor;

  const AuthButton({
    super.key,
    required this.text,
    this.onTap,
    this.hight,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (hight ?? 60).h,
        width: (width ?? 343).w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? AppColors.c25BCBD,
            width: 1.w,
          ),
          color: backgroundColor ?? AppColors.c25BCBD,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Text(
          text,
          style: AppStyles.textStyle(
            color: textColor ?? Colors.white,
            size: 15,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
