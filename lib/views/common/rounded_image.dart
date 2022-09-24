import 'package:flutter/material.dart';
import 'package:tempo_contacts/utils/utils.dart';

class RoundedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  const RoundedImage({
    Key? key,
    required this.imageUrl,
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
        borderRadius: BorderRadius.circular(
          borderRadius ?? 16.r,
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
