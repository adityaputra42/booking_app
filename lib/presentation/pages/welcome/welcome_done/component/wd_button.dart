import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WdButton extends StatelessWidget {
  const WdButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimen.w24, vertical: AppDimen.h30),
      child: SizedBox(height: 56.h,
          width: double.infinity,
          child: Expanded(
              child: PrimaryButton(
            onTap: () {},
            text: "Continue",
            type: PrimaryButtonType.type3,
          ))),
    );
  }
}
