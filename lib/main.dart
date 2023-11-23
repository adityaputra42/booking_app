import 'package:booking_app/config/router/app_router.dart';
import 'package:booking_app/config/router/midldeware/auth_guard.dart';
import 'package:booking_app/config/router/midldeware/first_install_guard.dart';
import 'package:booking_app/util/helper/pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefHelper.instance.init();
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    debugPrint(event.message);
  });

  GetIt.I.registerSingleton<AppRouter>(AppRouter(
    authGuard: AuthGuard(),
    firstInstallGuard: FirstInstallGuard(),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Booking App',
            theme: ThemeData(
              primarySwatch: Colors.teal,
              fontFamily: "Poppins",
            ),
            routerDelegate: router.delegate(),
            routeInformationParser: router.defaultRouteParser(),
          );
        });
  }
}
