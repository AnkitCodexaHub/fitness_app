import 'package:get/get.dart';

import '../controllers/analytics_screen_controller.dart';

class AnalyticsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnalyticsScreenController>(
      () => AnalyticsScreenController(),
    );
  }
}
