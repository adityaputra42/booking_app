import 'package:bloc/bloc.dart';
import 'package:booking_app/config/router/app_router.dart';
import 'package:booking_app/util/helper/helper.dart';
import 'package:get_it/get_it.dart';

import '../../../config/router/app_router.gr.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentPage < state.onboarding.length - 1) {
      emit(state.clone()..currentPage = state.currentPage + 1);
    } else if (state.currentPage == state.onboarding.length - 1) {
      skip();
    }
  }

  void previous() {
    if (state.currentPage > 0) {
      emit(state.clone()..currentPage = state.currentPage - 1);
    }
  }

  void goTo(int index) {
    if (index >= 0 && index < state.onboarding.length) {
      emit(state.clone()..currentPage = index);
    }
  }

  void skip() {
    PrefHelper.instance.setFirstInstall();
    GetIt.I<AppRouter>().replace(const WelcomeRoute());
  }
}
