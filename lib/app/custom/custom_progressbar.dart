import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';

class ProgressBar extends StatelessWidget {
  final double value; // percentage (0-100)

  const ProgressBar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = value.toInt();

    return Container(
      height: 16.h(context),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(3.w(context)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final filledWidth = (percentage / 100) * constraints.maxWidth;
          return Stack(
            children: [
              // filled part
              Container(
                width: filledWidth,
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  borderRadius: BorderRadius.circular(3.w(context)),
                ),
              ),
              // text inside filled area
              Container(
                width: filledWidth,
                alignment: Alignment.center,
                child: Text(
                  "$percentage%",
                  style: AppTextStyles.poppinsMedium(
                    color: AppColors.primaryDark,
                    fontSize: 10.sp(context),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
