import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:creativemindstask/presentation/shared_widgets/custom_listview.dart';
import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/section_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            'sections'.translate,
          fontSize: 21.sp,
          color: Colors.black,
        ),
        SizedBox(height: 16.h,),
        SizedBox(
          height: 130.h,
          child: CustomListViewBuilder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return const SectionItem(
                  title: 'الطلب السريع',
                  image: '',
                );
              },
              itemCount:5),
        )
      ],
    );
  }


}
