import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/config.dart';
import '../discover_cubit.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({Key? key,required this.cubit}) : super(key: key);
  final DiscoverCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.0.h,
      decoration:  BoxDecoration(
        color: Colors.white,boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 7,spreadRadius: 1)],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            onTap: () => cubit.changeIndex(0),
            icon: Icons.location_on_sharp,
            title: 'Trips',
            isSelected: cubit.state.selectedIndex == 0,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(1),
            icon: Icons.favorite,
            title: 'Favorite',
            isSelected: cubit.state.selectedIndex == 1,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(2),
            icon: Icons.settings,
            title: 'Settings',
            isSelected: cubit.state.selectedIndex == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required GestureTapCallback? onTap,
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColor.primaryColor: Colors.grey,
          ),
          const SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? AppColor.primaryColor : Colors.grey,
              fontSize: 12.0.sp,
            ),
          ),
        ],
      ),
    );
  }
}