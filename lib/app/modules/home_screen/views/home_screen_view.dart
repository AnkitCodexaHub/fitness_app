import 'package:fitness_app/app/widgets/custom_card.dart';
import 'package:fitness_app/app/modules/workout_screen/views/workout_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import '../../../theme/app_assets.dart';
import '../../../theme/app_text_styles.dart';
import '../../../widgets/workout_card.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FA),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFF7F6FA),
        toolbarHeight: 70.h(context),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning 🔥',
              style: AppTextStyles.semiBold(
                fontSize: 14.sp(context),
                color: AppColors.primaryDark,
              ),
            ),
            Text(
              'Pramuditya Uzumaki',
              style: AppTextStyles.extraBold(
                fontSize: 24.sp(context),
                color: AppColors.primaryDark,
              ),
            ),
          ],
        ),
      ),
      body: Scrollbar(
        thumbVisibility: false,
        radius: Radius.circular(8.w(context)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Search Bar
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w(context),
                  vertical: 16.h(context),
                ),
                child: SizedBox(
                  height: 48.h(context),
                  width: 350.w(context),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: AppTextStyles.regular(
                        fontSize: 14.sp(context),
                        color: AppColors.primaryDark.withOpacity(0.5),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.w(context)),
                        child: Image.asset(
                          AppAssets.search,
                          width: 24.w(context),
                          height: 24.h(context),
                          color: AppColors.primaryDark.withOpacity(0.5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.h(context),
                      ),
                      filled: true,
                      fillColor: AppColors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.w(context)),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.w(context)),
                        borderSide: BorderSide(
                          color: AppColors.primaryDark,
                          width: 0.5.w(context),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// Popular Workouts Title
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w(context),
                  vertical: 12.h(context),
                ),
                child: Text(
                  "Popular Workouts",
                  style: AppTextStyles.bold(
                    fontSize: 18.sp(context),
                    color: AppColors.primaryDark,
                  ),
                ),
              ),

              /// Horizontal Workouts List
              SizedBox(
                height: 176.h(context),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
                  children: [
                    WorkoutCard(
                      image: AppAssets.workout1,
                      title: "Lower Body\nTraining",
                      kcal: "500 Kcal",
                      time: "50 Min",
                      onPlay: () {
                        Get.to(() => const WorkoutScreenView());
                      },
                    ),
                    16.w(context).getWidthBox(context),
                    WorkoutCard(
                      image: AppAssets.workout2,
                      title: "Hand\nTraining",
                      kcal: "600 Kcal",
                      time: "40 Min",
                      onPlay: () {},
                    ),
                  ],
                ),
              ),

              /// Today Plan Title
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w(context),
                  vertical: 12.h(context),
                ),
                child: Text(
                  'Today Plan',
                  style: AppTextStyles.bold(
                    fontSize: 18.sp(context),
                    color: AppColors.primaryDark,
                  ),
                ),
              ),

              /// Plans List
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
                child: Column(
                  children: [
                    const PlanCard(
                      image: AppAssets.plan1,
                      title: "Push Up",
                      subtitle: "100 Push up a day",
                      badge: "Intermediate",
                      progress: 45,
                    ),
                    SizedBox(height: 10.h(context)),
                    const PlanCard(
                      image: AppAssets.plan2,
                      title: "Sit Up",
                      subtitle: "20 Sit up a day",
                      badge: "Beginner",
                      progress: 75,
                    ),
                    SizedBox(height: 10.h(context)),
                    const PlanCard(
                      image: AppAssets.plan3,
                      title: "Knee Push Up",
                      subtitle: "20 Sit up a day",
                      badge: "Beginner",
                      progress: 45,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 75.h(context)),
            ],
          ),
        ),
      ),
    );
  }
}
