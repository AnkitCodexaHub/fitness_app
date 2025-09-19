import 'package:get/get.dart';

import '../modules/activity_screen/bindings/activity_screen_binding.dart';
import '../modules/activity_screen/views/activity_screen_view.dart';
import '../modules/explore_screen/bindings/explore_screen_binding.dart';
import '../modules/explore_screen/views/explore_screen_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/workout_screen/bindings/workout_screen_binding.dart';
import '../modules/workout_screen/views/workout_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: Routes.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE_SCREEN,
      page: () => const ExploreScreenView(),
      binding: ExploreScreenBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITY_SCREEN,
      page: () => const ActivityScreenView(),
      binding: ActivityScreenBinding(),
    ),
    GetPage(
      name: _Paths.WORKOUT_SCREEN,
      page: () => const WorkoutScreenView(),
      binding: WorkoutScreenBinding(),
    ),
  ];
}
