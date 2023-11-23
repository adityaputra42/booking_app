import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/widget/app_input_text.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/util/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    // this.controller, required this.label,
  }) : super(key: key);

  // final TextEditingController? controller;
  // final String label;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          style: AppFont.display3,
        ),
        16.0.height,
        AppInputText(
          label: "Email",
          controller: cubit.state.emailController,
        ),
        16.0.height,
        AppInputText(
          label: "Password",
          controller: cubit.state.passwordController,
          suffixIcon: Icon(
            Icons.lock,
            size: AppDimen.w18,
          ),
        ),
        16.0.height,
        SizedBox(
          height: 48.h,
          width: double.infinity,
          child: Expanded(
            child: PrimaryButton(
              onTap: cubit.login,
              text: "Login",
              type: PrimaryButtonType.type3,
            ),
          ),
        )
      ],
    );
  }
}
