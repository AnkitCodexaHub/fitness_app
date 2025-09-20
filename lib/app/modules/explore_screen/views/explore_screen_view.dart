import 'package:fitness_app/app/widgets/challenge_card.dart';
import 'package:fitness_app/app/theme/app_assets.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/warmup_card.dart';
import '../controllers/explore_screen_controller.dart';

class ExploreScreenView extends GetView<ExploreScreenController> {
  const ExploreScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F6FA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.h(context).getHeightBox(context),

            /// Banner
            Center(
              child: Container(
                height: 180.h(context),
                width: 350.w(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.w(context)),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(23.w(context)),
                      child: Image.asset(
                        AppAssets.banner,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.w(context)),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF3C3C3C), Color(0x00000000)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(26.w(context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Quarantine\nWorkout",
                            style: AppTextStyles.bold(
                              fontSize: 22.sp(context),
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                'See more',
                                style: AppTextStyles.bold(
                                  fontSize: 14.sp(context),
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              6.w(context).getWidthBox(context),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 11.w(context),
                                color: AppColors.primaryLight,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// Best For You
            Padding(
              padding: EdgeInsets.all(16.w(context)),
              child: Text(
                "Best for you",
                style: AppTextStyles.bold(
                  fontSize: 18.sp(context),
                  color: AppColors.primaryDark,
                ),
              ),
            ),

            /// Best for you workouts
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      16.w(context).getWidthBox(context),
                      WarmupCard(
                        imageUrl: AppAssets.belly_fat_burner,
                        title: "Belly fat burner",
                        duration: "10 min",
                        level: "Beginner",
                      ),
                      16.w(context).getWidthBox(context),
                      WarmupCard(
                        imageUrl: AppAssets.lose_fat,
                        title: "Lose Fat",
                        duration: "10 min",
                        level: "Beginner",
                      ),
                      16.w(context).getWidthBox(context),
                    ],
                  ),
                  15.h(context).getHeightBox(context),
                  Row(
                    children: [
                      16.w(context).getWidthBox(context),
                      WarmupCard(
                        imageUrl: AppAssets.plank,
                        title: "Plank",
                        duration: "5 min",
                        level: "Expert",
                      ),
                      16.w(context).getWidthBox(context),
                      WarmupCard(
                        imageUrl: AppAssets.build_biceps,
                        title: "Build Biceps",
                        duration: "30 min",
                        level: "Intermediate",
                      ),
                      16.w(context).getWidthBox(context),
                    ],
                  ),
                ],
              ),
            ),

            /// Challenge
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Padding(
                  padding: EdgeInsets.all(16.w(context)),
                  child: Text(
                    'Challenge',
                    textAlign: TextAlign.start,
                    style: AppTextStyles.bold(
                      fontSize: 18.sp(context),
                      color: AppColors.primaryDark,
                    ),
                  ),
                ),

                /// Horizontal List of Challenge Cards
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      16.w(context).getWidthBox(context),
                      ChallengeCard(
                        title: "Plank\nChallenge",
                        iconPath: AppAssets.plank_challenge,
                        backgroundColor: AppColors.primaryLight,
                        textStyle: AppTextStyles.semiBold(
                          fontSize: 14.sp(context),
                          color: AppColors.primaryDark,
                        ),
                      ),
                      16.w(context).getWidthBox(context),
                      ChallengeCard(
                        title: "Sprint\nChallenge",
                        iconPath: AppAssets.sprint_challenge,
                        backgroundColor: AppColors.primaryDark,
                        textStyle: AppTextStyles.medium(
                          fontSize: 14.sp(context),
                          color: Colors.white,
                        ),
                      ),
                      16.w(context).getWidthBox(context),
                      ChallengeCard(
                        title: "Squat\nChallenge",
                        iconPath: AppAssets.squat_challenge,
                        backgroundColor: Colors.white,
                        textStyle: AppTextStyles.medium(
                          fontSize: 14.sp(context),
                          color: AppColors.primaryDark,
                        ),
                      ),
                      16.w(context).getWidthBox(context),
                    ],
                  ),
                ),
              ],
            ),

            /// Fast Warmup
            Padding(
              padding: EdgeInsets.all(20.w(context)),
              child: Text(
                "Fast Warmup",
                style: AppTextStyles.bold(
                  fontSize: 18.sp(context),
                  color: AppColors.primaryDark,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  16.w(context).getWidthBox(context),
                  WarmupCard(
                    imageUrl: AppAssets.leg_excercises,
                    title: "Leg excercises",
                    duration: "10 min",
                    level: "Beginner",
                  ),
                  16.w(context).getWidthBox(context),
                  WarmupCard(
                    imageUrl: AppAssets.backward_lunges,
                    title: "Backward lunges",
                    duration: "5 min",
                    level: "Intermediate",
                  ),
                  16.w(context).getWidthBox(context),
                ],
              ),
            ),

            100.h(context).getHeightBox(context),
          ],
        ),
      ),
    );
  }
}
