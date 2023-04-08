import 'package:badges/badges.dart';
import 'package:creativemindstask/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/sharedPreferenceClass.dart';
import '../../../shared_widgets/text_widget.dart';

class CartSection extends StatelessWidget {
  const CartSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 73.w,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppColors.searchTextField
      ),
      child: Row(
        children: [
      Badge(
      padding: const EdgeInsets.all(2),
      shape: BadgeShape.circle,
      badgeColor: AppColors.cartCount,
      position: sharedPrefs.getLanguage() == "ar"
          ? BadgePosition.topStart()
          : BadgePosition.topEnd(),
      borderRadius: BorderRadius.circular(3),
      badgeContent:  TextWidget(
        '50',
        fontSize: 10.sp,
      ),
      child: Image.asset('assets/icons/basket.png')
    ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 6.w,end: 6.w),
              height: 24.h,
              width: 1.w,
              color: AppColors.dividerColor
          ),
          TextWidget(
              '300 ج',
           fontSize: 12.sp,

          )
        ],


      ),
    );
  }
}
