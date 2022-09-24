import 'package:flutter/material.dart';
import 'package:tempo_contacts/data/constants/constants.dart';
import 'package:tempo_contacts/routes/route_arguments.dart';
import 'package:tempo_contacts/routes/routes.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:tempo_contacts/views/common/common.dart';

class ContactTile extends StatefulWidget {
  final String? imageUrl;
  final String? name;
  final String? contactNumber;
  const ContactTile({
    Key? key,
    this.imageUrl,
    this.name,
    this.contactNumber,
    required this.onForegroundChanged,
  }) : super(key: key);

  final ValueChanged<bool> onForegroundChanged;

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  bool get isForeground => _isForeground ?? false;
  bool? _isForeground;

  @override
  Widget build(BuildContext context) {
    final isForeground = TickerMode.of(context);
    if (_isForeground != isForeground) {
      _isForeground = isForeground;
      widget.onForegroundChanged(isForeground);
    }
    return InkWell(
      onTap: () {
        AppEnvironment.navigator.pushNamed(
          HomeRoute.userContactScreen,
          arguments: UserContactScreenArgs(
            name: widget.name,
            contactNumber: widget.contactNumber,
            imageUrl: widget.imageUrl,
          ),
        );
      },
      child: SizedBox(
        height: 64.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.r),
              child: RoundedImage(
                imageUrl: widget.imageUrl ?? AppAssets.randomTextImage,
                width: 56.r,
                height: double.maxFinite,
              ),
            ),
            sizedBoxWithWidth(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sizedBoxWithHeight(2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name ?? 'Aron Ashluxe',
                        style: AppTextStyles.text14w800Black.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      sizedBoxWithHeight(2),
                      Text(
                        widget.contactNumber ?? '4719698963',
                        style: AppTextStyles.text12w500Black.copyWith(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.r,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
