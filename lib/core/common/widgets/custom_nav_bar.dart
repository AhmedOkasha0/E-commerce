import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/tab_bar.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Platform.isIOS ? EdgeInsets.only(bottom: 10.h) : null,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TabBar(
        splashFactory: NoSplash.splashFactory,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.c25BCBD,
              width: 4.r,
            ),
          ),
        ),
        labelColor: AppColors.c25BCBD,
        unselectedLabelColor: Colors.transparent,
        labelStyle: AppStyles.textStyle(
          size: 12,
        ),
        dividerHeight: 0,
        onTap: (value) {
          setState(() {
            selectedTabIndex = value;
          });
        },
        tabs: [
          TabBarTab(
            icon: selectedTabIndex == 0
                ? ImageConstants.selectedHomeIcon
                : ImageConstants.homeIcon,
            label: "Home",
          ),
          TabBarTab(
            icon: selectedTabIndex == 1
                ? ImageConstants.selectedBlog
                : ImageConstants.unSelectedBlog,
            label: "Blogs",
          ),
          TabBarTab(
            icon: selectedTabIndex == 2
                ? ImageConstants.contactUs
                : ImageConstants.unSelectedBlog,
            label: "Contact us",
          ),
        ],
      ),
    );
  }
}
