import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding:  EdgeInsets.all(24.w),
            child: PageView.builder(
              itemBuilder: (c, i) =>
                  Image.asset(
                    cubit.state.onboarding[i].image ?? "",
                  ),
              itemCount: cubit.state.onboarding.length,
              onPageChanged: cubit.goTo,
            ),
          ),
        );
      },
    );
  }
}
