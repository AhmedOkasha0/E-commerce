import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/themes/text_style.dart';

class BlogArticle extends StatelessWidget {
  const BlogArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Article'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 18.w, right: 18.h, top: 18.h, bottom: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Image.asset(ImageConstants.homeImage)),
              Gap(10.h),
              Text(
                "intrducing",
                style: AppStyles.textStyle(size: 18, weight: FontWeight.w700),
              ),
              Gap(8.h),
              Text(
                "Dandruff is a common scalp condition characterized by flaky, itchy skin. It often results from an overgrowth of a yeast-like fungus called Malassezia, which irritates the scalp and accelerates the shedding of skin cells. Contributing factors include dry skin, oily scalp, poor hair hygiene, and sensitivity to hair products. While dandruff is not contagious or serious, it can cause discomfort and social embarrassment. Treatment typically involves regular use of medicated shampoos containing ingredients like zinc pyrithione, selenium sulfide, or ketoconazole, combined with good scalp care practices.",
                style: AppStyles.textStyle(size: 14, weight: FontWeight.w400),
              ),
              Gap(16.h),
              Text("symptoms",
                  style:
                      AppStyles.textStyle(size: 18, weight: FontWeight.w700)),
              Gap(8.h),
              Text(
                "Dandruff is a common scalp condition characterized by flaky, itchy skin. It often results from an overgrowth of a yeast-like fungus called Malassezia, which irritates the scalp and accelerates the shedding of skin cells. Contributing factors include dry skin, oily scalp, poor hair hygiene, and sensitivity to hair products. While dandruff is not contagious or serious, it can cause discomfort and social embarrassment. Treatment typically involves regular use of medicated shampoos containing ingredients like zinc pyrithione, selenium sulfide, or ketoconazole, combined with good scalp care practices.",
                style: AppStyles.textStyle(size: 14, weight: FontWeight.w400),
              ),
              Gap(16.h),
              Text("TreatMent",
                  style:
                      AppStyles.textStyle(size: 18, weight: FontWeight.w700)),
              Gap(8.h),
              Text(
                "Dandruff is a common scalp condition characterized by flaky, itchy skin. It often results from an overgrowth of a yeast-like fungus called Malassezia, which irritates the scalp and accelerates the shedding of skin cells. Contributing factors include dry skin, oily scalp, poor hair hygiene, and sensitivity to hair products. While dandruff is not contagious or serious, it can cause discomfort and social embarrassment. Treatment typically involves regular use of medicated shampoos containing ingredients like zinc pyrithione, selenium sulfide, or ketoconazole, combined with good scalp care practices.",
                style: AppStyles.textStyle(size: 14, weight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
