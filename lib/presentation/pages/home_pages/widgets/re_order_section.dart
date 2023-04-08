import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/re_order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/custom_listview.dart';
import '../../../shared_widgets/text_widget.dart';

class ReOrderSection extends StatelessWidget {
  const ReOrderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 26.h,bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            're_order'.translate,
            fontSize: 21.sp,
            color: Colors.black,
          ),
          SizedBox(height: 16.h,),
          SizedBox(
            height: 115.h,
            child: CustomListViewBuilder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return const ReOrderItem(
                    title: 'مطعم هندى',
                    description: 'وجبة العائلة',
                    image: '',
                  );
                },
                itemCount:5),
          )
        ],
      ),
    );
  }
}
