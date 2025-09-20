import 'package:fitness_app/app/widgets/date_selector.dart';
import 'package:fitness_app/app/widgets/watercard.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../theme/app_assets.dart';
import '../../../widgets/roundedcircularprogress.dart';
import '../controllers/analytics_screen_controller.dart';

class AnalyticsScreenView extends GetView<AnalyticsScreenController> {
  const AnalyticsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String monthYear = DateFormat("MMMM yyyy").format(DateTime.now());

    return Scaffold(
      backgroundColor: const Color(0xffF7F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
                child: Text(
                  monthYear,
                  style: AppTextStyles.bold(
                    fontSize: 18.sp(context),
                    color: AppColors.primaryDark,
                  ),
                ),
              ),

              12.h(context).getHeightBox(context),

              /// Date Selector
              SizedBox(
                height: 64.h(context), // responsive height
                child: const DateSelector(),
              ),

              24.h(context).getHeightBox(context),

              /// Today Report
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w(context)),
                child: Text(
                  'Today Report',
                  style: AppTextStyles.bold(
                    fontSize: 18.sp(context),
                    color: AppColors.primaryDark,
                  ),
                ),
              ),

              20.h(context).getHeightBox(context),

              /// Report Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Left side cards
                        Column(
                          children: [
                            /// Active Calories
                            Container(
                              height: 70.h(context),
                              width: 112.w(context),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFAFBF9),
                                borderRadius:
                                    BorderRadius.circular(12.w(context)),
                                border: Border.all(
                                  color: AppColors.primaryDark.withOpacity(0.1),
                                  width: 1.w(context),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 12.w(context),
                                  top: 12.h(context),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Active calories',
                                      style: AppTextStyles.medium(
                                        fontSize: 13.sp(context),
                                        color: AppColors.primaryDark
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    6.h(context).getHeightBox(context),
                                    Text(
                                      '645 Cal',
                                      style: AppTextStyles.poppinsSemiBold(
                                        fontSize: 16.sp(context),
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            16.h(context).getHeightBox(context),

                            /// Training Time
                            Container(
                              height: 132.h(context),
                              width: 112.w(context),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(12.w(context)),
                                color: const Color(0xffEAECFF),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.w(context),
                                      top: 12.h(context),
                                    ),
                                    child: Text(
                                      "Training time",
                                      style: AppTextStyles.medium(
                                        fontSize: 13.sp(context),
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ),
                                  16.h(context).getHeightBox(context),
                                  Center(
                                    child: RoundedCircularProgress(
                                      progress: 0.8,
                                      strokeWidth: 11.w(context),
                                      size: 74.w(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        16.w(context).getWidthBox(context),

                        /// Right side Cycling card
                        Container(
                          height: 218.h(context),
                          width: 222.w(context),
                          decoration: BoxDecoration(
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.circular(15.w(context)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20.h(context),
                                  left: 20.w(context),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 28.h(context),
                                      width: 28.w(context),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFAFBF9),
                                        borderRadius:
                                            BorderRadius.circular(3.w(context)),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          AppAssets.cycling,
                                          height: 20.h(context),
                                          width: 20.w(context),
                                          color: AppColors.primaryDark,
                                        ),
                                      ),
                                    ),
                                    8.w(context).getWidthBox(context),
                                    Text(
                                      "Cycling",
                                      style: AppTextStyles.bold(
                                        fontSize: 18.sp(context),
                                        color: const Color(0xFFFAFBF9),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              12.h(context).getHeightBox(context),

                              /// Map Section
                              Center(
                                child: SizedBox(
                                  height: 146.h(context),
                                  width: 197.w(context),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(7.w(context)),
                                    child: Image.asset(AppAssets.map,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    16.h(context).getHeightBox(context),

                    /// Heart Rate Card
                    Row(
                      children: [
                        Container(
                          height: 167.h(context),
                          width: 199.w(context),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFE8E8),
                            borderRadius: BorderRadius.circular(15.w(context)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20.h(context),
                                  left: 20.w(context),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 28.h(context),
                                      width: 28.w(context),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF9B9B9),
                                        borderRadius:
                                            BorderRadius.circular(3.w(context)),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          AppAssets.heart_rate,
                                          height: 20.h(context),
                                          width: 20.w(context),
                                          colorFilter: const ColorFilter.mode(
                                            Color(0xFFA80000),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    ),
                                    8.w(context).getWidthBox(context),
                                    Text(
                                      'Hearth Rate',
                                      style: AppTextStyles.bold(
                                        fontSize: 18.sp(context),
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              16.h(context).getHeightBox(context),
                              Center(
                                child: Container(
                                  height: 91.h(context),
                                  width: 175.w(context),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(7.w(context)),
                                    color: Colors.white,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 23.h(context),
                                        right: 14.w(context),
                                        left: 13.w(context),
                                        top: 17.h(context),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            AppAssets.heartbits,
                                            height: 51.h(context),
                                            width: 148.w(context),
                                            colorFilter: const ColorFilter.mode(
                                              Color(0xFFED4747),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 8.h(context),
                                        right: 10.w(context),
                                        child: Text(
                                          '79 Bpm',
                                          style: AppTextStyles.semiBold(
                                            fontSize: 10.sp(context),
                                            color: const Color(0xFF191D1A),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        16.w(context).getWidthBox(context),

                        /// Steps + Keep it up
                        Column(
                          children: [
                            /// Steps
                            Container(
                              height: 100.h(context),
                              width: 135.w(context),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(12.w(context)),
                                color: const Color(0xFFFFE8C6),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.w(context),
                                      top: 12.h(context),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28.h(context),
                                          width: 28.w(context),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF8D39D),
                                            borderRadius: BorderRadius.circular(
                                                3.w(context)),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              AppAssets.steps,
                                              height: 20.h(context),
                                              width: 20.w(context),
                                              colorFilter:
                                                  const ColorFilter.mode(
                                                Color(0xFF865A19),
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        ),
                                        8.w(context).getWidthBox(context),
                                        Text(
                                          'Steps',
                                          style: AppTextStyles.bold(
                                            fontSize: 18.sp(context),
                                            color: AppColors.primaryDark,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  12.h(context).getHeightBox(context),
                                  Center(
                                    child: Text(
                                      '999/2000',
                                      style: AppTextStyles.semiBold(
                                        fontSize: 13.sp(context),
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ),
                                  4.h(context).getHeightBox(context),
                                  // Progress bar
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.w(context),
                                      vertical: 0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(20.w(context)),
                                      child: LinearProgressIndicator(
                                        value: 999 / 2000,
                                        minHeight: 12.h(context),
                                        backgroundColor:
                                            const Color(0xFFFFEDD1),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                Color(0xFFFCC46F)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            16.h(context).getHeightBox(context),

                            /// Keep it up
                            Container(
                              height: 51.h(context),
                              width: 135.w(context),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(12.w(context)),
                                color: const Color(0xFFF6CFCF),
                              ),
                              child: Center(
                                child: Text(
                                  'Keep it Up! 💪',
                                  style: AppTextStyles.semiBold(
                                    fontSize: 16.sp(context),
                                    color: AppColors.primaryDark,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    16.h(context).getHeightBox(context),

                    /// Sleep + Water
                    Row(
                      children: [
                        /// Sleep
                        Container(
                          height: 128.h(context),
                          width: 178.w(context),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFE2FF),
                            borderRadius: BorderRadius.circular(15.w(context)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.w(context),
                                  top: 20.h(context),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 28.h(context),
                                      width: 28.w(context),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD6BBF8),
                                        borderRadius:
                                            BorderRadius.circular(3.w(context)),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          AppAssets.sleep,
                                          height: 20.h(context),
                                          width: 20.w(context),
                                          colorFilter: const ColorFilter.mode(
                                            Color(0xFF3D275A),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    ),
                                    8.w(context).getWidthBox(context),
                                    Text(
                                      'Sleep',
                                      style: AppTextStyles.bold(
                                        fontSize: 18.sp(context),
                                        color: AppColors.primaryDark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              12.h(context).getHeightBox(context),
                              Container(
                                width: 138.w(context),
                                height: 48.h(context),
                                color: Colors.transparent,
                                child: Center(
                                  child: SvgPicture.asset(
                                    AppAssets.sleep_image,
                                    height: 48.h(context),
                                    width: 138.w(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        16.w(context).getWidthBox(context),

                        /// Water Card
                        WaterCard(progress: 0.75),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
