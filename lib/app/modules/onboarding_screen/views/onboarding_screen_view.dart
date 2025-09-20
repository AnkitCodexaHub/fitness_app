import 'package:fitness_app/app/theme/app_assets.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/responsive_extension.dart';
import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 565.h(context),
              width: 396.w(context),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      AppAssets.logo,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 193.h(context),
                      width: 390.w(context),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.white38,
                            Colors.white70,
                            Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.h(context).getHeightBox(context),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: AppTextStyles.extraBold(
                  fontSize: 24.sp(context),
                  color: AppColors.primaryDark,
                ),
                children: [
                  const TextSpan(text: "Wherever You Are\n"),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: 4.h(context),
                          child: Image.asset(
                            AppAssets.highlight,
                            width: 75.w(context),
                            height: 14.h(context),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Health",
                          style: AppTextStyles.extraBold(
                            fontSize: 24.sp(context),
                            color: AppColors.primaryDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TextSpan(text: " Is Number One"),
                ],
              ),
            ),
            20.h(context).getHeightBox(context),
            Text(
              'There is no instant way to a healthy life',
              textAlign: TextAlign.center,
              style: AppTextStyles.regular(
                fontSize: 15.sp(context),
                color: AppColors.primaryDark.withOpacity(0.5),
              ),
            ),
            30.h(context).getHeightBox(context),
            SizedBox(
              width: 65.w(context),
              height: 5.h(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.w(context)),
                child: AnimatedBuilder(
                  animation: controller.progressController,
                  builder: (context, child) {
                    return LinearProgressIndicator(
                      value: controller.progressController.value,
                      backgroundColor: AppColors.primaryDark,
                      valueColor:
                          const AlwaysStoppedAnimation(AppColors.primaryLight),
                    );
                  },
                ),
              ),
            ),
            45.h(context).getHeightBox(context),
            InkWell(
              onTap: controller.goToNavigation,
              child: Container(
                height: 56.h(context),
                width: 350.w(context),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(32.w(context)),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bold(
                      fontSize: 16.sp(context),
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
