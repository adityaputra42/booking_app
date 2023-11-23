import 'package:booking_app/config/config.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          60.0.height,
          Text(
            "Find the Perfect Roommate",
            style: AppFont.display3,
          ),
          Text(
            "We've helped milions across the nation fin their perfect match_ and you are next!",
            style: AppFont.paragraphMedium,
          ), 16.0.height,
        ],
      ),
    );
  }
}
