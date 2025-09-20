import 'package:flutter/material.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import '../theme/app_assets.dart';
import '../theme/app_text_styles.dart';
import 'info_box.dart';

class WorkoutCard extends StatelessWidget {
  final String image;
  final String title;
  final String kcal;
  final String time;
  final VoidCallback onPlay;

  const WorkoutCard({
    Key? key,
    required this.image,
    required this.title,
    required this.kcal,
    required this.time,
    required this.onPlay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w(context),
      height: 174.h(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.w(context)),
      ),
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23.w(context)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.w(context)),
                gradient: const LinearGradient(
                  colors: [
                    Color(0x00000000), // transparent
                    Color(0xCC000000), // 80% black
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
            ),
          ),

          // Content
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.bold(
                      fontSize: 24.sp(context),
                      color: AppColors.white,
                    ),
                  ),
                  14.h(context).getHeightBox(context),
                  InfoBox(icon: AppAssets.cal, text: kcal),
                  10.h(context).getHeightBox(context),
                  InfoBox(icon: AppAssets.time, text: time),
                ],
              ),
            ),
          ),

          // Play button with onTap
          Positioned(
            right: 20.w(context),
            top: 68.h(context),
            child: GestureDetector(
              onTap: onPlay,
              child: Container(
                height: 38.h(context),
                width: 38.w(context),
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  borderRadius: BorderRadius.circular(19.w(context)),
                ),
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: const Color(0xFF191D1A),
                    size: 22.w(context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
