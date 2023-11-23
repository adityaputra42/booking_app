
import 'package:booking_app/data/src/app_img.dart';
import 'package:booking_app/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/config.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 163.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Image.asset(AppImg.sally2),
          24.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Itally",
                  style: AppFont.paragraphSmall,
                ),
                8.0.height,
                Text(
                  "Meet new roomies and find new adventures.",
                  style: AppFont.paragraphLarge.copyWith(fontWeight: FontWeight.w600,
                    height: 2.sp,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}