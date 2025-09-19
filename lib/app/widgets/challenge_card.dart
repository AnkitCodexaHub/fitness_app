import 'package:flutter/material.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';

class ChallengeCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final Color backgroundColor;
  final TextStyle textStyle;

  const ChallengeCard({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.backgroundColor,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h(context),
      width: 110.w(context),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(9.w(context)),
      ),
      child: Stack(
        children: [
          /// Text (Bottom-Left)
          Positioned(
            left: 10.w(context),
            bottom: 10.h(context),
            child: Text(
              title,
              style: textStyle,
            ),
          ),

          /// Icon (Bottom-Right)
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              iconPath,
              height: 72.h(context),
              width: 72.w(context),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
