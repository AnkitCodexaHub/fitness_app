import 'package:fitness_app/app/widgets/round_card.dart';
import 'package:fitness_app/app/theme/app_assets.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../controllers/workout_screen_controller.dart';

class WorkoutScreenView extends GetView<WorkoutScreenController> {
  const WorkoutScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w(context)),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24.sp(context),
            ),
          ),
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.primaryDark,
        toolbarHeight: 40.h(context),
        title: Text(
          'Workout',
          style: AppTextStyles.poppinsMedium(
            fontSize: 16.sp(context),
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            /// Top workout image and gradient overlay
            Padding(
              padding: EdgeInsets.all(20.w(context)),
              child: Container(
                width: 350.w(context),
                height: 440.h(context),
                color: Colors.transparent,
                child: Stack(
                  children: [
                    /// Background image
                    Positioned(
                      child: Image.asset(
                        AppAssets.workout,
                        height: 250.h(context),
                        width: 350.w(context),
                        fit: BoxFit.cover,
                      ),
                    ),

                    /// Gradient overlay
                    Positioned(
                      top: 116,
                      child: Container(
                        width: 350.w(context),
                        height: 134.h(context),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0x001D1D1D), Color(0xFF686868)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.w(context)),
                            bottomRight: Radius.circular(18.w(context)),
                          ),
                        ),
                      ),
                    ),

                    /// Info box (Time / Burn)
                    Positioned(
                      top: 218.h(context),
                      left: 46.w(context),
                      right: 46.w(context),
                      child: Container(
                        width: 258.w(context),
                        height: 64.h(context),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.w(context)),
                            color: AppColors.primaryDark.withOpacity(0.3),
                            border: Border.all(
                              width: 0.5.w(context),
                              color: Colors.white.withValues(alpha: 0.25),
                            )
                            // border: GradientBoxBorder(
                            //   gradient: const LinearGradient(
                            //     colors: [
                            //       Color(0xFFBBF246),
                            //       Color(0x03BBF246),
                            //       Color(0x00BBF246),
                            //       Color(0x03BBF246),
                            //       Color(0xFFBBF246),
                            //     ],
                            //     stops: [0.0, 0.41, 0.47, 0.54, 1.0],
                            //   ),
                            //   width: 0.5.w(context),
                            // ),
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /// Time
                            Container(
                              width: 84.w(context),
                              height: 32.h(context),
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Container(
                                    height: 32.h(context),
                                    width: 32.w(context),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5.w(context)),
                                      color: const Color(0xFFBBF246),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppAssets.ic_time,
                                        height: 24.h(context),
                                        width: 24.w(context),
                                      ),
                                    ),
                                  ),
                                  8.w(context).getWidthBox(context),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                          // The glowing, stroked outline
                                          Text(
                                            'Time',
                                            style: AppTextStyles.poppinsRegular(
                                              fontSize: 10.sp(
                                                  context), // Adjust the font size as needed
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth =
                                                    2.5 // Adjust the stroke width for the 'glow'
                                                ..color = Colors.white
                                                    .withValues(alpha: 0.25),
                                            ),
                                          ),
                                          // The solid, semi-transparent text on top
                                          Text(
                                            'Time',
                                            style: AppTextStyles.poppinsRegular(
                                              fontSize: 10.sp(
                                                  context), // Must match the size of the text below
                                              color: Colors
                                                  .white, // The core color of the text
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: <Widget>[
                                          // The glowing, stroked outline
                                          Text(
                                            '20 min',
                                            style: AppTextStyles.poppinsMedium(
                                              fontSize: 12.sp(
                                                  context), // Adjust the font size as needed
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth =
                                                    2.5 // Adjust the stroke width for the 'glow'
                                                ..color = Colors.white
                                                    .withValues(alpha: 0.25),
                                            ),
                                          ),
                                          // The solid, semi-transparent text on top
                                          Text(
                                            '20 min',
                                            style: AppTextStyles.poppinsMedium(
                                              fontSize: 12.sp(
                                                  context), // Must match the size of the text below
                                              color: const Color(
                                                  0xFFBBF246), // The core color of the text
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            /// Divider
                            Container(
                              width: 1.w(context),
                              height: 38.h(context),
                              color: Colors.white.withOpacity(0.25),
                            ),

                            /// Burn
                            Container(
                              width: 86.w(context),
                              height: 32.h(context),
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Container(
                                    height: 32.h(context),
                                    width: 32.w(context),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5.w(context)),
                                      color: const Color(0xFFBBF246),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppAssets.ic_burn,
                                        height: 24.h(context),
                                        width: 24.w(context),
                                      ),
                                    ),
                                  ),
                                  8.w(context).getWidthBox(context),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                          // The glowing, stroked outline
                                          Text(
                                            'Burn',
                                            style: AppTextStyles.poppinsRegular(
                                              fontSize: 10.sp(
                                                  context), // Adjust the font size as needed
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth =
                                                    2.5 // Adjust the stroke width for the 'glow'
                                                ..color = Colors.white
                                                    .withValues(alpha: 0.25),
                                            ),
                                          ),
                                          // The solid, semi-transparent text on top
                                          Text(
                                            'Burn',
                                            style: AppTextStyles.poppinsRegular(
                                              fontSize: 10.sp(
                                                  context), // Must match the size of the text below
                                              color: Colors
                                                  .white, // The core color of the text
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: <Widget>[
                                          // The glowing, stroked outline
                                          Text(
                                            '95 kcal',
                                            style: AppTextStyles.poppinsMedium(
                                              fontSize: 12.sp(
                                                  context), // Adjust the font size as needed
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth =
                                                    2.5 // Adjust the stroke width for the 'glow'
                                                ..color = Colors.white
                                                    .withValues(alpha: 0.25),
                                            ),
                                          ),
                                          // The solid, semi-transparent text on top
                                          Text(
                                            '95 kcal',
                                            style: AppTextStyles.poppinsMedium(
                                              fontSize: 12.sp(
                                                  context), // Must match the size of the text below
                                              color: const Color(
                                                  0xFFBBF246), // The core color of the text
                                            ),
                                          ),
                                        ],
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

                    /// Workout title
                    Positioned(
                      top: 306.h(context),
                      left: 0,
                      child: Text(
                        'Lower Body Training',
                        style: AppTextStyles.extraBold(
                          fontSize: 24.sp(context),
                          color: Colors.white,
                        ),
                      ),
                    ),

                    /// Workout description
                    Positioned(
                      top: 352.h(context),
                      left: 0,
                      child: Text(
                        "The lower abdomen and hips are the most difficult\nareas of the body to reduce when we are on a diet.\nEven so, in this area, especially the legs as a whole,\nyou can reduce weight even if you don't use tools.",
                        style: AppTextStyles.regular(
                          fontSize: 15.sp(context),
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// Rounds section
            Padding(
              padding: EdgeInsets.all(20.w(context)),
              child: SizedBox(
                width: 350.w(context),
                height: 300.h(context),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Rounds',
                          style: AppTextStyles.bold(
                            fontSize: 20.sp(context),
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '1',
                                style: AppTextStyles.bold(
                                  fontSize: 18.sp(context),
                                  color: Colors.white,
                                ),
                              ),
                              WidgetSpan(
                                child: Text(
                                  '/8',
                                  textScaleFactor: 0.6, // smaller denominator
                                  style: AppTextStyles.bold(
                                    fontSize: 20.sp(context),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Text(
                        //   '1',
                        //   style: AppTextStyles.bold(
                        //     fontSize: 18.sp(context),
                        //     color: Colors.white,
                        //   ),
                        // ),
                        // Text(
                        //   '/8',
                        //   style: AppTextStyles.bold(
                        //     fontSize: 15.sp(context),
                        //     color: Colors.white,
                        //   ),
                        // )
                      ],
                    ),
                    16.h(context).getHeightBox(context),
                    RoundCard(
                      title: 'Jumping Jacks',
                      subtitle: '00:30',
                      imageAsset: AppAssets.jumping_jacks,
                      onTap: () {},
                    ),
                    SizedBox(height: 16.h(context)),
                    RoundCard(
                      title: 'Squats',
                      subtitle: '01:00',
                      imageAsset: AppAssets.squats,
                      onTap: () {},
                    ),
                    SizedBox(height: 16.h(context)),
                    RoundCard(
                      title: 'Backward Lunge',
                      subtitle: '00:30',
                      imageAsset: AppAssets.rounds_3,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),

            75.h(context).getHeightBox(context),
          ],
        ),
      ),

      /// Bottom button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w(context),
          vertical: 24.h(context),
        ),
        child: SizedBox(
          height: 56.h(context),
          width: 350.w(context),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFBBF246),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.w(context)),
              ),
            ),
            child: Text(
              'Lets Workout',
              style: AppTextStyles.poppinsSemiBold(
                fontSize: 16.sp(context),
                color: AppColors.primaryDark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
