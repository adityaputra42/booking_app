
import 'package:booking_app/data/src/app_img.dart';
import 'package:booking_app/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/config.dart';
import '../../../../../data/model/trips/Trip.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({Key? key,
    required this.yourRoomies,
  }
      ) : super(key: key);
  final List<Trip> yourRoomies;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [_header(), _roomiesList(context)],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child:
      ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(yourRoomies[i]),
        itemCount:yourRoomies.length,
      ),
    );
  }

  Widget _roomiesItem(Trip trip) {
    return Container(
      height: 72,
      margin: EdgeInsets.only(
          bottom: AppDimen.h16, left: AppDimen.w16, right: AppDimen.w16),
      padding:
      EdgeInsets.symmetric(horizontal: AppDimen.w16, vertical: AppDimen.h8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppDimen.w8),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  trip.name ?? '',
                  // 'name',
                  style: AppFont.paragraphMediumBold,
                ),
                Text(
                  trip.location ?? '',
                  // 'Jakarta',
                  style: AppFont.paragraphSmall.copyWith(
                    color: AppColor.darkerGray,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.more_vert)
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.w,
      width: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.softerGreen,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundColor: AppColor.softerGreen,
              backgroundImage: const AssetImage(AppImg.sally),
            ),
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
        top: AppDimen.h60,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Your Roomies",
            style: AppFont.heading2,
          ),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.darkerGray,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: AppColor.darkerGray,
              )),
        ],
      ),
    );
  }
}