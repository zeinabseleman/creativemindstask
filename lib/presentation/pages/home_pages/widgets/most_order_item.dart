import 'package:creativemindstask/app/core/colors.dart';
import 'package:creativemindstask/presentation/shared_widgets/dot_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/text_widget.dart';

class MostOrderItem extends StatelessWidget {
  const MostOrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/deliverytime.png'),
        SizedBox(width: 2.w,),
        TextWidget(
          '45 دقيقة',
          fontSize: 14.sp,
          color: AppColors.descriptionColor,
        ),
        const DotContainer(),
        Image.asset('assets/icons/delivery.png'),
        SizedBox(width: 2.w,),
        TextWidget(
          '15 ج',
          fontSize: 14.sp,
          color: AppColors.descriptionColor,
        ),
        const DotContainer(),
        Image.asset('assets/icons/rate.png'),
        SizedBox(width: 2.w,),
        TextWidget(
          '4.5',
          fontSize: 14.sp,
          color: AppColors.descriptionColor,
        )
      ],
       );
  }
}
