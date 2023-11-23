
import 'package:booking_app/config/theme/theme.dart';
import 'package:flutter/material.dart';

class WdTitle extends StatelessWidget {
  const WdTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.display3,
          ),
          Text(
            "Find Your Roomie Find Your Roomie Find Your Roomie Find Your Roomie Find Your Roomie Find Your Roomie",
            style: AppFont.paragraphMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
