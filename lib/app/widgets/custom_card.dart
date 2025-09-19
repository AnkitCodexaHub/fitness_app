import 'package:flutter/material.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import '../custom/custom_progressbar.dart';
import '../theme/app_text_styles.dart';

class PlanCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String badge;
  final double progress;

  const PlanCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.badge,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Card
        Container(
          margin: EdgeInsets.only(bottom: 16.h(context)),
          padding: EdgeInsets.all(12.w(context)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23.w(context)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8.w(context),
                // offset: Offset(0, 4.h(context)),
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.w(context)),
                child: Image.asset(
                  image,
                  height: 100.h(context),
                  width: 100.w(context),
                  fit: BoxFit.cover,
                ),
              ),

              12.w(context).getWidthBox(context),

              // Right side content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.poppinsMedium(
                        fontSize: 16.sp(context),
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 13.sp(context),
                        color: AppColors.primaryDark.withOpacity(0.5),
                      ),
                    ),
                    15.h(context).getHeightBox(context),
                    ProgressBar(value: progress),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Badge positioned on top right of card
        Positioned(
          top: 0,
          right: 12.w(context),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w(context),
              vertical: 4.h(context),
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryDark,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6.w(context)),
                bottomRight: Radius.circular(6.w(context)),
              ),
            ),
            child: Text(
              badge,
              style: AppTextStyles.poppinsRegular(
                fontSize: 10.sp(context),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
