import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_animation/water_animation.dart';
import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import '../theme/app_assets.dart';

class WaterCard extends StatelessWidget {
  final double progress;

  const WaterCard({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.w(context),
      height: 128.h(context),
      decoration: BoxDecoration(
        color: const Color(0XFFD8E6EC),
        borderRadius: BorderRadius.circular(23.w(context)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Padding(
            padding: EdgeInsets.only(
              left: 20.w(context),
              top: 20.h(context),
            ),
            child: Row(
              children: [
                Container(
                  height: 28.h(context),
                  width: 28.w(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFFAED1E0),
                    borderRadius: BorderRadius.circular(3.w(context)),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.ic_water,
                      height: 20.h(context),
                      width: 20.w(context),
                      colorFilter: const ColorFilter.mode(
                        Color(0xFF2B4855),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                8.w(context).getWidthBox(context),
                Text(
                  'Water',
                  style: AppTextStyles.bold(
                    fontSize: 18.sp(context),
                    color: AppColors.primaryDark,
                  ),
                ),
              ],
            ),
          ),

          10.h(context).getHeightBox(context),

          /// Wave Container
          Padding(
            padding: EdgeInsets.only(
              left: 12.w(context),
              right: 12.w(context),
              bottom: 12.h(context),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(19.w(context)),
                bottomRight: Radius.circular(19.w(context)),
              ),
              child: SizedBox(
                height: 58.h(context),
                width: 132.w(context),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(color: Colors.white),

                    /// Wave fill
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FractionallySizedBox(
                        heightFactor: progress,
                        widthFactor: 1.0,
                        child: ClipRect(
                          child: Stack(
                            children: [
                              /// First wave
                              ShaderMask(
                                shaderCallback: (rect) => const LinearGradient(
                                  colors: [Color(0xFF8CC6DB), Color(0xFF8CC6DB)],
                                ).createShader(rect),
                                blendMode: BlendMode.srcIn,
                                child: SizedBox(
                                  width: 132.w(context),
                                  child: WaterAnimation(speed: 3),
                                ),
                              ),

                              /// Second wave
                              ShaderMask(
                                shaderCallback: (rect) => const LinearGradient(
                                  colors: [Color(0xFF8CC6DB), Color(0xFF8CC6DB)],
                                ).createShader(rect),
                                blendMode: BlendMode.srcIn,
                                child: SizedBox(
                                  width: 132.w(context),
                                  child: WaterAnimation(speed: 5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    /// Text overlay
                    Text(
                      "6/8 Cups",
                      style: AppTextStyles.semiBold(
                        fontSize: 13.sp(context),
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
