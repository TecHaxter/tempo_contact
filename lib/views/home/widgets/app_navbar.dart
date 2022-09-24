import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/constants.dart';
import 'package:tempo_contacts/views/common/common.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedImage(
          imageUrl: AppAssets.userProfile,
        ),
        Text(
          AppStrings.contacts,
          style: AppTextStyles.text18w800Black,
        ),
        RoundedIcon(
          icon: Icons.edit,
          color: AppColors.lightBlueAccent,
        )
      ],
    );
  }
}
