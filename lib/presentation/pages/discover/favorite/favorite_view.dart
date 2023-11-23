import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';import 'component/favorite_header.dart';


import 'component/favorite_title.dart';
import 'component/favorote_list.dart';
import 'favorite_cubit.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FavoriteCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<FavoriteCubit>(context);


    return Scaffold(
      backgroundColor: AppColor.whiteBackground,
      body: Column(
        children: const [
          FavoriteTitle(),
          FavoriteHeader(),
          FavoriteList()
        ],
      ),
    );
  }
}
