import 'package:creativemindstask/app/core/colors.dart';
import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:creativemindstask/presentation/shared_widgets/custom_listview.dart';
import 'package:creativemindstask/presentation/shared_widgets/order_item.dart';
import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'love_item.dart';

class MayLoveSection extends StatelessWidget {
  const MayLoveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          'may_like'.translate,
          fontSize: 21.sp,
          color: Colors.black,
        ),
        SizedBox(height: 16.h,),
        SizedBox(
          height: 240.h,
          child: CustomListViewBuilder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return  OrderItem(
                  mayLove: true,
                  afterPrice: '30ج',
                  beforePrice: '60ج',
                  width: 150.w,
                  title: 'وجبه الاكيله',
                  description: 'برجر فرايد تشيكن',
                  image: '',
                  child: const LoveItem(
                    image: '',
                    name: 'مطعم هندي',
                  ),
                );
              },
              itemCount:5),
        )
      ],
    );
  }


}
