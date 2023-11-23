import 'package:booking_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputText extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String label;

  const AppInputText({
    Key? key,
    this.controller,
    this.suffixIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: label,
          helperStyle: AppFont.paragraphSmall,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimen.w12)),
        ),
      ),
    );
  }
}
