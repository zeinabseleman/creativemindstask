import 'package:creativemindstask/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 5.w,end: 5.w),
      width: 5.w,
      height: 5.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.descriptionColor,
      ),
    );
  }
}
