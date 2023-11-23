import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/presentation/widget/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SecondaryButton(
          onTap: () {
            cubit.skip();
          },
          text: "Skip",
          type: SecondaryButtonType.type3,
        ),
        PrimaryButton(
          onTap: () {
            cubit.next();
          },
          text: "Next",
          type: PrimaryButtonType.type3,
        )
      ],
    );
  }
}
