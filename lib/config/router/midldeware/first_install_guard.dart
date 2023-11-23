import 'package:auto_route/auto_route.dart';
import 'package:booking_app/config/router/app_router.dart';
import 'package:booking_app/util/helper/helper.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      resolver.next();
    } else {
      router.replace(const WelcomeRoute());
    }
  }
}
