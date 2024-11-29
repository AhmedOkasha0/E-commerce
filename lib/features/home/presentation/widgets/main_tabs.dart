import 'package:flutter/material.dart';
import 'package:store_app/features/blog/presentation/screen/blog_screen.dart';
import 'package:store_app/features/contac_us/presentation/contac_us.dart';
import 'package:store_app/features/home/presentation/screen/home_screen.dart';

class MainTabs extends StatelessWidget {
  const MainTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(physics: NeverScrollableScrollPhysics(), children: [
      HomeScreen(),
      ContactUsScreen(),
      BlogScreen(),
    ]);
  }
}
