import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/constants/images.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/themes/text_style.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10, // Horizontal space between items
            mainAxisSpacing: 10, // Vertical space between items
          ),
          itemCount: 10, // 2 columns * 5 rows = 10 items
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              child: SizedBox(
                height: 250.h, // Increased height to accommodate content
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RoutesNames.blogArticle);
                  },
                  child: Column(
                    children: [
                      // Image widget
                      Image.asset(
                        ImageConstants.diagnose,
                        height: 120.h,
                        width: double.infinity, // Make image full width
                        fit: BoxFit.cover, // Adjust to fit within box
                      ),
                      Gap(10.h),
                      const Text(
                        "example",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Gap(5.h),
                      // Description Text with text overflow handling
                      Expanded(
                        child: Text(
                          "description of the medical\n condition and treatment",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyles.textStyle(size: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
