import 'package:flutter/material.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import '../theme/app_text_styles.dart';

class InfoBox extends StatelessWidget {
  final String icon;
  final String text;

  const InfoBox({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h(context),
      width: 80.w(context),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(9.w(context)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 5.w(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              height: 14.h(context),
              width: 14.w(context),
              fit: BoxFit.contain,
            ),
            5.w(context).getWidthBox(context),
            Text(
              text,
              style: AppTextStyles.regular(
                fontSize: 12.sp(context),
                color: AppColors.primaryDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
