import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_network_image.dart';

class SectionItem extends StatelessWidget {
final String title;
final String? image;
final bool mayLove;
final double? width;



  const SectionItem({super.key,
required this.title,
this.image,this.mayLove=false,this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 130.w,
      height: 130.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
         CommonNetworkImageView(
        height: double.infinity,
        width: double.infinity,
        url: image!,
        fit: BoxFit.fill,
        placeHolder: "assets/images/slider.png",
         ),
          Align(
            alignment: (mayLove==false)
                ? Alignment.bottomCenter
            : Alignment.bottomLeft,
            child: (mayLove==false)
                ?TextWidget(
              title,
              fontSize: 15.sp,
              color: Colors.white,
              height: 5.h,
            ):Container(
              margin: const EdgeInsets.all(5),
              width: 30.w,height: 30.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/icons/basket.png'),
            )
          ),
        ],
      ),
    );
  }
}
