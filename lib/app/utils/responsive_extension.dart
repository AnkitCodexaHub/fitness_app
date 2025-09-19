import 'package:flutter/widgets.dart';

extension ResponsiveExtension on num {
  double _screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  double _screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  /// Width responsive (based on 390px design width)
  double w(BuildContext context) => _screenWidth(context) * (this / 390);

  /// Height responsive (based on 844px design height)
  double h(BuildContext context) => _screenHeight(context) * (this / 844);

  /// Font size responsive
  double sp(BuildContext context) => _screenWidth(context) * (this / 390);

  /// SizedBox responsive width
  SizedBox getWidthBox(BuildContext context) => SizedBox(width: w(context));

  /// SizedBox responsive height
  SizedBox getHeightBox(BuildContext context) => SizedBox(height: h(context));
}
