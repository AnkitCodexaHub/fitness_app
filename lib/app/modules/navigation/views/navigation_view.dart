import 'package:fitness_app/app/modules/activity_screen/views/activity_screen_view.dart';
import 'package:fitness_app/app/modules/home_screen/views/home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_app/app/modules/navigation/controllers/navigation_controller.dart';
import '../../explore_screen/views/explore_screen_view.dart';
import '../../../widgets/custom_navbar.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);

  final List<Widget> _pages = const [
    HomeScreenView(),
    ExploreScreenView(),
    ActivityScreenView(),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      extendBody: true, // body goes behind navbar for floating effect
      body: _pages[controller.selectedIndex.value],

      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: controller.selectedIndex.value,
        onTap: (index) => controller.changeTab(index),
      ),
    ));
  }
}
