import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class RoundCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageAsset;
  final Color trailingColor;
  final VoidCallback? onTap;

  const RoundCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    this.trailingColor = const Color(0xFFBBF246),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w(context),
      height: 74.h(context),
      decoration: BoxDecoration(
        color: const Color(0xFF384046),
        borderRadius: BorderRadius.circular(15.w(context)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w(context),
        vertical: 8.h(context),
      ),
      child: Row(
        children: [
          // Leading Image Container
          Container(
            height: 58.h(context),
            width: 58.w(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w(context)),
            ),
            child: Center(
              child: Image.asset(
                imageAsset,
                height: 58.h(context),
                width: 58.w(context),
              ),
            ),
          ),
          SizedBox(width: 12.w(context)),

          // Title & Subtitle
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.medium(
                    fontSize: 16.sp(context),
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4.h(context)),
                Text(
                  subtitle,
                  style: AppTextStyles.regular(
                    fontSize: 13.sp(context),
                    color: Colors.white.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),

          // Trailing Play Button
          GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.only(right: 15.w(context)),
              child: CircleAvatar(
                radius: 18.w(context),
                backgroundColor: AppColors.primaryDark,
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    size: 20.sp(context),
                    color: trailingColor,
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
