import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/wd_button.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/wd_image.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_done/component/wd_title.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_done_cubit.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.softerGreen,
      body: Column(
        children: [
          102.0.height,
          const WdImage(),
          56.0.height,
          const WdTitle(),
          16.0.height,
          const WdButton(),
          32.0.height,
        ],
      ),
    );
  }
}
