import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarTab extends StatelessWidget {
  const TabBarTab({
    super.key,
    required this.label,
    required this.icon,
    this.height,
    this.width,
  });

  final String label;
  final String icon;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        icon,
        height: (height ?? 28).h,
        width: (width ?? 28).w,
      ),
      iconMargin: EdgeInsets.only(bottom: 4.h),
      child: Text(
        label,
      ),
    );
  }
}
