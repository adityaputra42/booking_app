import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.type = PrimaryButtonType.type1,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final PrimaryButtonType type;
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (type == PrimaryButtonType.type1) {
      return _type1();
    } else if (type == PrimaryButtonType.type2) {
      return _type2();
    } else {
      return _type3();
    }
  }

  Widget _type1() {
    return SizedBox(
      width: 102,
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 0,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonSmall.copyWith(color: AppColor.white),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: 124,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonMedium.copyWith(color: AppColor.white),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: 156,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonLarge.copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
