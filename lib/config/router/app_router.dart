import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/discover/discover_view.dart';
import '../../presentation/pages/discover/favorite/favorite_view.dart';
import '../../presentation/pages/discover/setting/setting_view.dart';
import '../../presentation/pages/discover/trips/detail/detail_view.dart';
import '../../presentation/pages/discover/trips/trips_view.dart';
import '../../presentation/pages/pages.dart';
import '../../presentation/pages/welcome/login/login_view.dart';
import '../../presentation/pages/welcome/register/register_view.dart';
import '../../presentation/pages/welcome/welcome_view.dart';
import 'midldeware/auth_guard.dart';
import 'midldeware/first_install_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: OnboardingPage,
        path: '/onboarding',
        initial: true, 
        guards: [
          FirstInstallGuard,
        ]),
    AutoRoute(page: WelcomePage, path: '/welcome', guards: [
      AuthGuard,
    ]),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trips'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: SettingPage, path: '/settings'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
    RedirectRoute(path: "*", redirectTo: "/discover")
    // AutoRoute(page: NotFoundPage, path: '*', name: 'NotFoundPage'),
  ],
)
// extend the generated private router
class $AppRouter{}
