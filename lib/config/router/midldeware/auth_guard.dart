import 'package:auto_route/auto_route.dart';
import 'package:booking_app/config/router/app_router.dart';
import 'package:booking_app/util/helper/helper.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
      resolver.next();
    } else {
      router.replace(const LoginRoute());
    }
  }
}
