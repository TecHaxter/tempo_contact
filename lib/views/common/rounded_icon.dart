import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/app_colors.dart';
import 'package:tempo_contacts/utils/utils.dart';

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double? width;
  final double? height;
  final double? borderRadius;
  const RoundedIcon({
    Key? key,
    required this.icon,
    this.color,
    this.width,
    this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 40.r,
      height: height ?? 40.r,
      decoration: BoxDecoration(
        color: color ?? AppColors.darkBackground,
        borderRadius: BorderRadius.circular(
          borderRadius ?? 16.r,
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          color: AppColors.theWhite,
        ),
      ),
    );
  }
}
