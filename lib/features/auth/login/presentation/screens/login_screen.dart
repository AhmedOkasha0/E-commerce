import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/common/widgets/custom_button.dart';
import 'package:store_app/core/common/widgets/custom_form_field.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.h, left: 16.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "! Welcome",
                textAlign: TextAlign.center,
                style: AppStyles.textStyle(
                  size: 20,
                  weight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Gap(8.h),
            Text(
              "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              style: AppStyles.textStyle(size: 14, color: AppColors.c757575),
            ),
            Gap(40.h),
            Form(
                child: Column(
              children: [
                Gap(16.h),
                CustomTextFormField(
                  hintText: "Email Adress",
                  hintStyle:
                      AppStyles.textStyle(size: 14, color: AppColors.cC2C2C2),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
                ),
                Gap(20.h),
                Gap(16.h),
                CustomTextFormField(
                  hintText: "password",
                  hintStyle:
                      AppStyles.textStyle(size: 14, color: AppColors.cC2C2C2),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
                ),
                Gap(60.h),
                AuthButton(
                  text: "Log In",
                  onTap: () {
                    Navigator.pushNamed(context, RoutesNames.homeScreen);
                  },
                ),
                Gap(50.h),
                Center(
                    child: Text(
                  "Or sign in with",
                  style:
                      AppStyles.textStyle(size: 14, color: AppColors.c757575),
                )),
                Gap(30.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(ImageConstants.googleIcon),
                  ),
                ),
                Gap(30.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesNames.signUpScreen);
                  },
                  child: Text(
                    "Don't have an account? Sign up",
                    style:
                        AppStyles.textStyle(size: 12, weight: FontWeight.w500),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
