import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/common/widgets/custom_button.dart';
import 'package:store_app/core/common/widgets/custom_form_field.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';
import 'package:store_app/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:store_app/features/auth/sign_up/cubit/sing_up_state.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

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
                "Create Account",
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
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: AppStyles.textStyle(size: 14, color: AppColors.c757575),
            ),
            Gap(40.h),
            BlocConsumer<SignUpCubit, SingUpState>(
              listener: (context, state) {
                if (state is SingUpSuccess) {
                  Navigator.pushNamed(context, RoutesNames.loginScreen);
                } else if (state is SingUpError) {
                  Fluttertoast.showToast(
                      msg: state.error,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: AppColors.c25BCBD,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email Adress",
                            style: AppStyles.textStyle(
                                size: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Gap(12.h),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          final regex = RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          if (!regex.hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        controller: context.read<SignUpCubit>().emailController,
                        // hintText: "Email Address",
                        hintStyle: AppStyles.textStyle(
                            size: 14, color: AppColors.cC2C2C2),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 20.w),
                      ),
                      Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: AppStyles.textStyle(
                                size: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Gap(12.h),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        controller:
                            context.read<SignUpCubit>().passwordController,
                        // hintText: "Password",
                        // obscureText: true,
                        hintStyle: AppStyles.textStyle(
                            size: 14, color: AppColors.cC2C2C2),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 20.w),
                      ),
                      Gap(60.h),
                      state is SingUpLoading
                          ? const CircularProgressIndicator(
                              color: AppColors.c25BCBD,
                            )
                          : AuthButton(
                              text: "Create Account",
                              onTap: () {
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  context.read<SignUpCubit>().signUp();
                                }
                              },
                            ),
                      Gap(50.h),
                      Center(
                        child: Text(
                          "Or sign up with",
                          style: AppStyles.textStyle(
                              size: 14, color: AppColors.c757575),
                        ),
                      ),
                      Gap(30.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesNames.loginScreen);
                        },
                        child: Text(
                          "Already have an account yet? Log In",
                          style: AppStyles.textStyle(
                              size: 12, weight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
