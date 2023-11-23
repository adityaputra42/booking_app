import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/data/src/app_img.dart';
import 'package:flutter/material.dart';

class WdImage extends StatelessWidget {
  const WdImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(AppImg.sally2),
    ));
  }
}
