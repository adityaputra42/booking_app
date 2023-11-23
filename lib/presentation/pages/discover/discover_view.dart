import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/discover/setting/setting_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/button_menu.dart';
import 'discover_cubit.dart';
import 'discover_state.dart';
import 'favorite/favorite_view.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => buildPage(context)),
    );
  }

  Widget buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);
    return Scaffold(
      backgroundColor: AppColor.whiteBackground,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DiscoverCubit, DiscoverState>(
              builder: (context, state) {
                return state.selectedIndex == 0
                    ? const TripsPage()
                    : state.selectedIndex == 1
                        ? const FavoritePage()
                        : const SettingPage();
              },
            ),
          ),
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return ButtonMenu(
                cubit: cubit,
              );
            },
          )
        ],
      ),
    );
  }
}
