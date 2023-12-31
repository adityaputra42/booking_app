
import 'package:booking_app/data/src/app_img.dart';
import 'package:booking_app/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';

import '../../../../../config/config.dart';
import '../../../../../data/model/trips/Trip.dart';
import '../trips_cubit.dart';

class OtherMatches extends StatelessWidget {
  const OtherMatches({
    Key? key,
    required this.otherMatches,
  }) : super(key: key);
  final List<Trip> otherMatches;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    Logger.root.info('OtherMatches build ${cubit.state.status.name}');
    return Expanded(
      child:
      cubit.state.status == HttpStateStatus.loading
          ? const Center(
        child: CupertinoActivityIndicator(),
      )
          : cubit.state.status == HttpStateStatus.error
          ?  Center(
        child: Text("Error!!", style: AppFont.paragraphLargeBold),
      )
          :
      ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(context,otherMatches[i] ),
        itemCount: otherMatches.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _roomiesItem(BuildContext context, Trip trip) {
    return Container(
      margin: EdgeInsets.only(
          left: AppDimen.w16, top: AppDimen.h24, bottom: AppDimen.h16),
      padding: EdgeInsets.only(
          right: AppDimen.w16,
          left: AppDimen.w16,
          bottom: AppDimen.h16,
          top: 49.h),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w38,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(AppDimen.w16),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(AppImg.sally)),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(trip.name ?? "", style: AppFont.paragraphLargeBold,overflow: TextOverflow.ellipsis,)),
              Text(
                "\$${trip.price ?? 0}",
                style: AppFont.paragraphSmall,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Text(
        "Other Matches",
        style: AppFont.heading2,
      ),
    );
  }
}