import 'package:auto_route/auto_route.dart';
import 'package:booking_app/util/helper/helper.dart';

import '../app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
     router.replace(const DiscoverRoute());
    } else {
      router.replace(const LoginRoute());
    }
  }
}
