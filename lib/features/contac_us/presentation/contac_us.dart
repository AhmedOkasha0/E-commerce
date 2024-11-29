import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/common/widgets/custom_button.dart';
import 'package:store_app/core/common/widgets/custom_form_field.dart';
import 'package:store_app/core/themes/text_style.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:
          EdgeInsets.only(top: 120.h, right: 16.w, left: 16.w, bottom: 20.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contact us ...",
                style: AppStyles.textStyle(size: 26, weight: FontWeight.w700)),
            Gap(30.h),
            CustomTextFormField(
              hintText: "Name",
              contentPadding:
                  EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
            ),
            Gap(16.h),
            CustomTextFormField(
              hintText: "Email",
              contentPadding:
                  EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
            ),
            Gap(16.h),
            CustomTextFormField(
              hintText: "Email Subject",
              contentPadding:
                  EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
            ),
            Gap(16.h),
            CustomTextFormField(
              hintText: "Content",
              contentPadding:
                  EdgeInsets.only(top: 45.h, bottom: 45.h, left: 20.w),
            ),
            Gap(30.h),
            AuthButton(text: "send", onTap: () {}),
          ],
        ),
      ),
    ));
  }
}
