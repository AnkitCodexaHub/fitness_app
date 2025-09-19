import 'package:get/get.dart';

import '../controllers/workout_screen_controller.dart';

class WorkoutScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkoutScreenController>(
      () => WorkoutScreenController(),
    );
  }
}
