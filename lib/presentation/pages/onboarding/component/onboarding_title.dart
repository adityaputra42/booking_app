import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(cubit.state.onboarding[cubit.state.currentPage].title ?? "",
                style: AppFont.heading2),
            Text(
              cubit.state.onboarding[cubit.state.currentPage].description ?? "",
              style: AppFont.paragraphMedium,
              textAlign: TextAlign.justify,
            ), 16.0.height
          ],
        );
      },
    );
  }
}
