import 'dart:math';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';

class RoundedCircularProgress extends StatelessWidget {
  final double progress; // 0.0 - 1.0
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;
  final double size;

  const RoundedCircularProgress({
    super.key,
    required this.progress,
    this.backgroundColor = Colors.white,
    this.progressColor = const Color(0xFFA48AED),
    this.strokeWidth = 14,
    this.size = 90,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.w(context),
      height: size.h(context),
      child: CustomPaint(
        painter: _RoundedProgressPainter(
          progress: progress,
          backgroundColor: backgroundColor,
          progressColor: progressColor,
          strokeWidth: strokeWidth.w(context),
        ),
        child: Center(
          child: Text(
            "${(progress * 100).toInt()}%",
            style: AppTextStyles.semiBold(
              fontSize: 14.sp(context),
              color: AppColors.primaryDark,
            ),
          ),
        ),
      ),
    );
  }
}

class _RoundedProgressPainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;

  _RoundedProgressPainter({
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final startAngle = 0.0; // start from right

    /// Background arc
    final paintBg = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      rect.deflate(strokeWidth / 2),
      0,
      2 * pi,
      false,
      paintBg,
    );

    /// Border arc (slightly thicker, black)
    final paintBorder = Paint()
      ..color = Colors.black
      ..strokeWidth = strokeWidth + 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      rect.deflate(strokeWidth / 2),
      startAngle,
      progress * 2 * pi,
      false,
      paintBorder,
    );

    /// Progress arc (on top of border)
    final paintFg = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      rect.deflate(strokeWidth / 2),
      startAngle,
      progress * 2 * pi,
      false,
      paintFg,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
