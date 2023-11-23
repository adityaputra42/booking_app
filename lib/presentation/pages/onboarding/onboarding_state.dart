import 'package:booking_app/data/model/onboarding/on_boarding.dart';
import 'package:booking_app/data/src/app_img.dart';

class OnboardingState {
  final List<Onboarding> onboarding = [
    Onboarding(
        image: AppImg.illustration1,
        title: "Onboarding 1",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
    Onboarding(
        image: AppImg.illustration2,
        title: "Onboarding 2",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
    Onboarding(
        image: AppImg.illustration3,
        title: "Onboarding 3",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
  ];
  int currentPage = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
