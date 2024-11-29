import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/common/widgets/custom_button.dart';
import 'package:store_app/core/common/widgets/custom_form_field.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/themes/app_colors.dart';
import 'package:store_app/core/themes/text_style.dart';
import 'package:store_app/features/auth/login/cubit/login_cubit.dart';
import 'package:store_app/features/auth/login/cubit/login_state.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.h, left: 16.w, right: 16.w),
        child: SingleChildScrollView(
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
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    Navigator.pushReplacementNamed(
                        context, RoutesNames.homeScreen);
                  } else if (state is LoginError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
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
                            controller:
                                context.read<LoginCubit>().emailController,
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
                            // hintText: "Email Adress",
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
                                context.read<LoginCubit>().passwordController,
                            // hintText: "password",
                            hintStyle: AppStyles.textStyle(
                                size: 14, color: AppColors.cC2C2C2),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 20.w),
                          ),
                          Gap(60.h),
                          AuthButton(
                            text: "Log In",
                            onTap: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                context.read<LoginCubit>().login();
                              }
                            },
                          ),
                          Gap(50.h),
                          Center(
                              child: Text(
                            "Or sign in with",
                            style: AppStyles.textStyle(
                                size: 14, color: AppColors.c757575),
                          )),
                          Gap(30.h),
                          BlocConsumer<LoginCubit, LoginState>(
                            listener: (context, state) {
                              if (state is GoogleSignInSuccess) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Google Sign-In successful!')),
                                );
                                Navigator.pushNamed(context,
                                    RoutesNames.homeScreen); // Navigate to home
                              } else if (state is GoogleSignInError) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.error)),
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state is GoogleSignInLoading) {
                                return const CircularProgressIndicator();
                              }
                              return GestureDetector(
                                onTap: () {
                                  context.read<LoginCubit>().loginWithGoogle();
                                },
                                child: Container(
                                  height: 60.h,
                                  width: 60.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(ImageConstants.googleIcon),
                                ),
                              );
                            },
                          ),
                          Gap(30.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RoutesNames.signUpScreen);
                            },
                            child: Text(
                              "Don't have an account? Sign up",
                              style: AppStyles.textStyle(
                                  size: 12, weight: FontWeight.w500),
                            ),
                          )
                        ],
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
