import 'package:creativemindstask/app/core/colors.dart';
import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:creativemindstask/presentation/shared_widgets/custom_listview.dart';
import 'package:creativemindstask/presentation/shared_widgets/order_item.dart';
import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'most_order_item.dart';

class MostOrderSection extends StatelessWidget {
  const MostOrderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            TextWidget(
              'most_wanted'.translate,
              fontSize: 21.sp,
              color: Colors.black,
            ),
            Row(
              children: [
                TextWidget(
                  'all'.translate,
                  fontSize: 14.sp,
                  color: AppColors.dotColor,
                ),
                Image.asset('assets/icons/back.png'),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h,),
        SizedBox(
          height: 230.h,
          child: CustomListViewBuilder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return const OrderItem(
                  title: 'كوك دور',
                  description: 'برجر فرايد تشيكن',
                  image: '',
                  child: MostOrderItem(),
                );
              },
              itemCount:5),
        )
      ],
    );
  }


}
