import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/custom_nav_bar.dart';
import 'package:store_app/features/home/presentation/widgets/main_tabs.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: MainTabs(),
        
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
