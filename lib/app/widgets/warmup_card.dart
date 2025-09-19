import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';

class WarmupCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String duration;
  final String level;

  const WarmupCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225.w(context),
      height: 100.h(context),
      padding: EdgeInsets.all(10.w(context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.w(context)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.w(context),
            offset: Offset(0, 2.h(context)),
          ),
        ],
      ),
      child: Row(
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(6.w(context)),
            child: Image.asset(
              imageUrl,
              width: 80.w(context),
              height: 80.h(context),
              fit: BoxFit.cover,
            ),
          ),

          10.w(context).getWidthBox(context),

          /// Text + Chips
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Title
                Text(
                  title,
                  style: AppTextStyles.semiBold(
                    fontSize: 14.sp(context),
                    color: AppColors.primaryDark,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                6.h(context).getHeightBox(context),

                /// Tags stacked (duration + level)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTag(context, duration),
                    6.h(context).getHeightBox(context),
                    _buildTag(context, level),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.w(context),
          vertical: 3.h(context),
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(3.w(context)),
        ),
        child: Text(
          text,
          style: AppTextStyles.regular(
            fontSize: 12.sp(context),
            color: const Color(0xFF192126).withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}
