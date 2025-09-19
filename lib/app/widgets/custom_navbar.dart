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
    return Container(
      color: Colors.transparent,
      child: Padding(
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
              Padding(
                padding: EdgeInsets.only(left: 12.w(context)),
                child: _buildNavItem(
                  context,
                  index: 0,
                  icon: Icons.home,
                  label: "Home",
                ),
              ),
              _buildNavItem(
                context,
                index: 1,
                icon: Icons.rocket_launch_outlined,
                label: "Explore",
              ),
              _buildNavItem(
                context,
                index: 2,
                icon: Icons.insert_chart,
                label: "Analytics",
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.w(context)),
                child: _buildNavItem(
                  context,
                  index: 3,
                  icon: Icons.person_outline_rounded,
                  label: "Profile",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      BuildContext context, {
        required int index,
        required IconData icon,
        required String label,
      }) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 40.h(context),
        padding: EdgeInsets.symmetric(
          horizontal: 16.w(context),
        ),
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
            if (isSelected) ...[
              SizedBox(width: 7.w(context)),
              Text(
                label,
                style: AppTextStyles.medium(
                  color: AppColors.primaryDark,
                  fontSize: 13.sp(context),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
