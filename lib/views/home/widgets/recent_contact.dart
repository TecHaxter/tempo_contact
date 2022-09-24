import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/app_text_styles.dart';
import 'package:tempo_contacts/data/constants/constants.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:tempo_contacts/views/common/common.dart';

class RecentContact extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final DateTime? lastCalled;
  const RecentContact({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.lastCalled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedImage(
          imageUrl: imageUrl ?? AppAssets.randomTextImage,
          width: double.maxFinite,
          height: 104.h,
          borderRadius: 24.r,
        ),
        Column(
          children: [
            Text(
              name ?? '',
              style: AppTextStyles.text14w800Black,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            sizedBoxWithHeight(4),
            Text(
              (lastCalled ?? DateTime(DateTime.now().minute - 24)).timeAgo,
              style: AppTextStyles.text12w500Black,
            ),
          ],
        )
      ],
    );
  }
}
