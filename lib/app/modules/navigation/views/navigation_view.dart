import 'package:fitness_app/app/modules/analytics_screen/views/analytics_screen_view.dart';
import 'package:fitness_app/app/modules/home_screen/views/home_screen_view.dart';
import 'package:fitness_app/app/modules/profile_screen/views/profile_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_app/app/modules/navigation/controllers/navigation_controller.dart';
import '../../explore_screen/views/explore_screen_view.dart';
import '../../../widgets/custom_navbar.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  final List<Widget> _pages = const [HomeScreenView(), ExploreScreenView(), AnalyticsScreenView(), ProfileScreenView()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true, // body goes behind navbar for floating effect
        body: _pages[controller.selectedIndex.value],

        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: controller.selectedIndex.value,
          onTap: (index) => controller.changeTab(index),
        ),
      ),
    );
  }
}
