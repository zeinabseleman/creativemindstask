import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/common_network_image.dart';
import '../../../shared_widgets/text_widget.dart';

class LoveItem extends StatelessWidget {
final String? image;
final String name;

  const LoveItem({super.key, this.image, required this.name});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28.w,
          height: 28.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CommonNetworkImageView(
            url: image!,
            fit: BoxFit.contain,
            placeHolder: 'assets/images/Image 36.png',
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        TextWidget(
          name,
          fontSize: 14.sp,
        ),
      ],
    );
  }
}
