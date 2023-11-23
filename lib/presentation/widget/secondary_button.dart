import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    this.type = SecondaryButtonType.type1,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final SecondaryButtonType type;
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (type == SecondaryButtonType.type1) {
      return _type1();
    } else if (type == SecondaryButtonType.type2) {
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
        style: ElevatedButton.styleFrom(
          elevation: 0,
          // backgroundColor: AppColor.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          side: const BorderSide(
            width: 1,
            color: AppColor.primaryColor,
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonSmall.copyWith(color: AppColor.primaryColor),
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
          backgroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              width: 1,
              color: AppColor.primaryColor,
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonMedium.copyWith(color: AppColor.primaryColor),
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
          backgroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: AppColor.primaryColor,
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppFont.buttonLarge.copyWith(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
