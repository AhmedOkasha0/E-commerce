import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 140.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.c25BCBD,
            ),
            child: Text(
              "home screen",
              style: AppStyles.textStyle(
                size: 20,
                weight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Gap(10.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 320.h,
                      width: 180.w,
                      child: Text(
                        "At Eczima,\n we are dedicated to providing personalized care and support for individuals suffering from skin conditions.\n Our expert team focuses on healing and managing eczema and other skin diseases with effective, evidence-based treatments.\n We empower you to take control of your skin health and achieve long-term wellness",
                        style: AppStyles.textStyle(
                            color: Colors.black,
                            size: 14,
                            weight: FontWeight.w400),
                      ),
                    ),
                    Image.asset(
                      ImageConstants.diagnose,
                      height: 180.h,
                      width: 150.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset(ImageConstants.treatment),
                  ),
                  Gap(5.h),
                  const Text("Diagnosis of skin diseases"),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset(ImageConstants.treatment),
                  ),
                  Gap(5.h),
                  const Text("Treatment of skin diseases"),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset(ImageConstants.diagnose),
                  ),
                  Gap(5.h),
                  const Text(
                    "Tips for preventing skin diseases",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset(ImageConstants.diagnose),
                  ),
                  Gap(5.h),
                  const Text("Communication with a doctor"),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
