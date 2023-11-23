import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_cubit.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/presentation/widget/secondary_button.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<WelcomeCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
              child: PrimaryButton(
            onTap: cubit.handleExplore,
            text: "Explore",
            type: PrimaryButtonType.type2,
          )),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onTap: cubit.handleLogin,
              text: "Login",
              type: SecondaryButtonType.type2,
            ),
          )
        ],
      ),
    );
  }
}
