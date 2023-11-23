import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            cubit.state.onboarding.length,
                (index) =>
            index == cubit.state.currentPage
                ? _activeIndicator()
                : _inactiveIndicator(),
          ),
        );
      },
    );
  }

  Widget _activeIndicator() {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      width: 32.w,
      height: 6.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        color: AppColor.primaryColor,
      ),
    );
  }

  Widget _inactiveIndicator() {
    return Container(
      width: 6.w, margin: EdgeInsets.only(left: 4.w),
      height: 6.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        color: AppColor.softGreen,
      ),
    );
  }
}
