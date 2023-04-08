import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CitySection extends StatelessWidget {
  const CitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/icons/address.png'),
             SizedBox(width: 4.w,),
             TextWidget('طنطا , منطقة الاستاد',fontSize: 14.sp,)
          ],
        ),
        InkWell(
          onTap: (){},
          child: TextWidget(
            'change'.translate,
            fontSize: 14.sp,
          ),
        )
      ],
    );
  }
}
