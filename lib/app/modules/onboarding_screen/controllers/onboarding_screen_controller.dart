import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_app/app/routes/app_pages.dart';

class OnboardingScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController progressController;

  @override
  void onInit() {
    super.onInit();

    progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..forward();

    progressController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        goToNavigation();
      }
    });
  }

  void goToNavigation() {
    if (progressController.isAnimating) {
      progressController.stop();
    }
    Get.offAllNamed(Routes.NAVIGATION);
  }

  @override
  void onClose() {
    progressController.dispose();
    super.onClose();
  }
}
