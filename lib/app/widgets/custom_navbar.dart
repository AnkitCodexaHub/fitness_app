import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.w(context),
        right: 25.w(context),
        bottom: 12.h(context),
      ),
      child: Container(
        height: 64.h(context),
        width: 340.w(context),
        decoration: BoxDecoration(
          color: AppColors.primaryDark,
          borderRadius: BorderRadius.circular(32.w(context)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(context, 0, Icons.home, "Home", leftPadding: 12.w(context)),
            _buildNavItem(context, 1, Icons.rocket_launch_outlined, "Explore"),
            _buildNavItem(context, 2, Icons.insert_chart, "Analytics"),
            _buildNavItem(context, 3, Icons.person_outline_rounded, "Profile", rightPadding: 12.w(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      BuildContext context,
      int index,
      IconData icon,
      String label, {
        double leftPadding = 0,
        double rightPadding = 0,
      }) {
    final bool isSelected = selectedIndex == index;

    return Padding(
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: GestureDetector(
        onTap: () => onTap(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1), // smooth and fast
          curve: Curves.easeOutCubic,
          height: 40.h(context),
          padding: EdgeInsets.symmetric(horizontal: isSelected ? 20.w(context) : 12.w(context)),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryLight : Colors.transparent,
            borderRadius: BorderRadius.circular(30.w(context)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primaryDark : Colors.white,
                size: 22.w(context),
              ),
              if (isSelected)
                Padding(
                  padding: EdgeInsets.only(left: 6.w(context)),
                  child: Text(
                    label,
                    style: AppTextStyles.medium(
                      color: AppColors.primaryDark,
                      fontSize: 13.sp(context),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
