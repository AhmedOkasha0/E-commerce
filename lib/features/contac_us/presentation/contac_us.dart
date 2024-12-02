import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/common/widgets/custom_button.dart';
import 'package:store_app/core/common/widgets/custom_form_field.dart';
import 'package:store_app/core/themes/text_style.dart';
import 'package:store_app/features/contac_us/cubit/contact._cubit.dart';
import 'package:store_app/features/contac_us/cubit/contatct_state.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    context.read<ContactCubit>().contentController.clear();
    context.read<ContactCubit>().nameController.clear();
    context.read<ContactCubit>().emailController.clear();
    context.read<ContactCubit>().subjectController.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactCubit, ContactUsState>(
      listener: (context, state) {
        if (state is SendNoteSuccess) {
          context.read<ContactCubit>().contentController.clear();
          context.read<ContactCubit>().nameController.clear();
          context.read<ContactCubit>().emailController.clear();
          context.read<ContactCubit>().subjectController.clear();
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Text(
              "Coming soon",
              style: AppStyles.textStyle(size: 26, weight: FontWeight.w700),
            ),
          ),
          //      Form(
          //   key: _formKey,
          //   child: SingleChildScrollView(
          //     child: Padding(
          //       padding: EdgeInsets.only(top: 120.h, left: 16.w, right: 16.w),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text("Contact us ...",
          //               style: AppStyles.textStyle(
          //                   size: 26, weight: FontWeight.w700)),
          //           Gap(30.h),
          //           CustomTextFormField(
          //             controller: context.read<ContactCubit>().nameController,
          //             hintText: "Name",
          //             contentPadding:
          //                 EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
          //           ),
          //           Gap(16.h),
          //           CustomTextFormField(
          //             controller: context.read<ContactCubit>().emailController,
          //             hintText: "Email",
          //             contentPadding:
          //                 EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
          //           ),
          //           Gap(16.h),
          //           CustomTextFormField(
          //             controller: context.read<ContactCubit>().subjectController,
          //             hintText: "Email Subject",
          //             contentPadding:
          //                 EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w),
          //           ),
          //           Gap(16.h),
          //           CustomTextFormField(
          //             controller: context.read<ContactCubit>().contentController,
          //             hintText: "Content",
          //             contentPadding:
          //                 EdgeInsets.only(top: 45.h, bottom: 45.h, left: 20.w),
          //           ),
          //           Gap(30.h),
          //           AuthButton(
          //               text: "send",
          //               onTap: () {
          //                 context.read<ContactCubit>().sendEmail(
          //                       name: context
          //                           .read<ContactCubit>()
          //                           .nameController
          //                           .text,
          //                       email: context
          //                           .read<ContactCubit>()
          //                           .emailController
          //                           .text,
          //                       subject: context
          //                           .read<ContactCubit>()
          //                           .subjectController
          //                           .text,
          //                       content: context
          //                           .read<ContactCubit>()
          //                           .contentController
          //                           .text,
          //                     );
          //               }),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}
