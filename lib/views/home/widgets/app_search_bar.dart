import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/constants.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:tempo_contacts/views/common/common.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40.h,
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: AppColors.darkGray,
          ),
          sizedBoxWithWidth(8),
          Text(
            AppStrings.search,
            style: AppTextStyles.text14w800Black.copyWith(
              color: AppColors.darkGray,
            ),
          ),
        ],
      ),
    );
  }
}
