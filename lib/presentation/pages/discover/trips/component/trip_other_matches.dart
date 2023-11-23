
import 'package:booking_app/data/src/app_img.dart';
import 'package:booking_app/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/config.dart';

class OtherMatches extends StatelessWidget {
  const OtherMatches({
    Key? key,
    // required this.otherMatches,
  }) : super(key: key);
  // final List<Trip> otherMatches;

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
    // final cubit = BlocProvider.of<TripsCubit>(context);
    // Logger.root.info('OtherMatches build ${cubit.state.status.name}');
    return Expanded(
      child:
      // cubit.state.status == HttpStateStatus.loading
      //     ? const Center(
      //   child: CupertinoActivityIndicator(),
      // )
      //     : cubit.state.status == HttpStateStatus.error
      //     ?  Center(
      //   child: Text("Error!!", style: AppFont.paragraphLargeBold),
      // )
      //     :
      ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(context, ),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _roomiesItem(BuildContext context) {
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

        color: AppColor.white,boxShadow:const [BoxShadow(spreadRadius: 1,blurRadius: 1,color: Colors.black12)],
        borderRadius: BorderRadius.circular(AppDimen.w16),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(AppImg.sally2)),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text( "Japan", style: AppFont.paragraphLargeBold,overflow: TextOverflow.ellipsis,)),
              Text(
                "\$${ 100}",
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