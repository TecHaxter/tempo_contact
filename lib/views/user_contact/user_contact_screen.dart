import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/app_assets.dart';
import 'package:tempo_contacts/data/constants/app_colors.dart';
import 'package:tempo_contacts/data/constants/app_strings.dart';
import 'package:tempo_contacts/data/constants/app_text_styles.dart';
import 'package:tempo_contacts/routes/route_arguments.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:tempo_contacts/views/common/common.dart';

class UserContactScreen extends StatelessWidget {
  final UserContactScreenArgs args;
  const UserContactScreen({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      AppEnvironment.navigator.pop();
                    },
                    child: Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black45,
                        ),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  RoundedIcon(
                    icon: Icons.edit,
                    color: AppColors.darkBlueAccent,
                  ),
                ],
              ),
            ),
            sizedBoxWithHeight(16),
            RoundedImage(
              imageUrl: args.imageUrl ?? AppAssets.randomTextImage,
              width: 96.r,
              height: 96.r,
              borderRadius: 24.r,
            ),
            sizedBoxWithHeight(16),
            Text(
              args.name ?? 'Albert Flores',
              style: AppTextStyles.text18w400Black.copyWith(
                color: Colors.black54,
              ),
            ),
            sizedBoxWithHeight(4),
            Text(
              args.contactNumber ?? '4719698963',
              style: AppTextStyles.text12w500Black.copyWith(
                color: Colors.black54,
              ),
            ),
            sizedBoxWithHeight(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedIcon(
                  icon: Icons.message_outlined,
                  color: AppColors.darkGreenAccent,
                  width: 48.r,
                  height: 48.r,
                  borderRadius: 12.r,
                ),
                sizedBoxWithWidth(16),
                RoundedIcon(
                  icon: Icons.call_outlined,
                  color: AppColors.lightBlueAccent,
                  width: 48.r,
                  height: 48.r,
                  borderRadius: 12.r,
                ),
                sizedBoxWithWidth(16),
                RoundedIcon(
                  icon: Icons.video_call_outlined,
                  color: AppColors.lightRedAccent,
                  width: 48.r,
                  height: 48.r,
                  borderRadius: 12.r,
                ),
                sizedBoxWithWidth(16),
                RoundedIcon(
                  icon: Icons.all_inbox_outlined,
                  color: AppColors.darkGray,
                  width: 48.r,
                  height: 48.r,
                  borderRadius: 12.r,
                ),
              ],
            ),
            sizedBoxWithHeight(16),
            Container(
              height: 32.h,
              width: double.maxFinite,
              color: AppColors.lightGray,
            ),
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.mobile,
                    style: AppTextStyles.text14w800Black.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        args.contactNumber ?? '4719698963',
                        style: AppTextStyles.text18w400Black.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          const Icon(
                            Icons.message_outlined,
                            color: Colors.black54,
                          ),
                          sizedBoxWithWidth(8),
                          const Icon(
                            Icons.call_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.home,
                    style: AppTextStyles.text14w800Black.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4660195584',
                        style: AppTextStyles.text18w400Black.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          const Icon(
                            Icons.message_outlined,
                            color: Colors.black54,
                          ),
                          sizedBoxWithWidth(8),
                          const Icon(
                            Icons.call_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.home,
                    style: AppTextStyles.text14w800Black.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4070096180',
                        style: AppTextStyles.text18w400Black.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          const Icon(
                            Icons.message_outlined,
                            color: Colors.black54,
                          ),
                          sizedBoxWithWidth(8),
                          const Icon(
                            Icons.call_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    RoundedIcon(
                      icon: Icons.pin_drop_outlined,
                      width: 48.r,
                      height: 48.r,
                      borderRadius: 12.r,
                      color: AppColors.darkBlueAccent,
                    ),
                    sizedBoxWithHeight(8),
                    Text(
                      AppStrings.shareLocation,
                      style: AppTextStyles.text12w500Black.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                sizedBoxWithWidth(24),
                Column(
                  children: [
                    RoundedIcon(
                      icon: Icons.qr_code_outlined,
                      width: 48.r,
                      height: 48.r,
                      borderRadius: 12.r,
                      color: AppColors.darkGray,
                    ),
                    sizedBoxWithHeight(8),
                    Text(
                      AppStrings.shareLocation,
                      style: AppTextStyles.text12w500Black.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                sizedBoxWithWidth(24),
                Column(
                  children: [
                    RoundedIcon(
                      icon: Icons.share_outlined,
                      width: 48.r,
                      height: 48.r,
                      borderRadius: 12.r,
                      color: AppColors.lightGreenAccent,
                    ),
                    sizedBoxWithHeight(8),
                    Text(
                      AppStrings.shareContact,
                      style: AppTextStyles.text12w500Black.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            sizedBoxWithHeight(24),
          ],
        ),
      ),
    );
  }
}
