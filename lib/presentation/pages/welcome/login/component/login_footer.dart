import 'package:booking_app/config/config.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Forgot password? ",
            style: AppFont.paragraphSmall,
          ),
          TextSpan(
            text: "Get new ",
            style: AppFont.paragraphSmallBold,
          ),
        ])),
        8.0.height,
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Don't have an account? ",
            style: AppFont.paragraphSmall,
          ),
          TextSpan(
            text: "Create new ",
            style: AppFont.paragraphSmallBold,
          ),
        ]))
      ],
    );
  }
}
