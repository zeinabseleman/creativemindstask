import 'package:creativemindstask/app/core/colors.dart';
import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/common_network_image.dart';
import '../../../shared_widgets/text_widget.dart';

class ReOrderItem extends StatelessWidget {
final double? width;
final double? height;
final String? image;
final String? title;
final String? description;


  const ReOrderItem({super.key,  this.width,
this.height,this.image,this.title,this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        top: 8.h,bottom: 11.h,start: 8.w,end: 10.w
      ),
      width: width ?? 200.w,
      height: height ?? 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.searchTextField,width: 1)
      ),
      child:  Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Column(
                children: [
                  TextWidget(
                  title!,
                    fontSize: 14.sp,
                    ),
                  SizedBox(height: 10.sp,),
                  TextWidget(
                    description!,
                    fontSize: 14.sp,
                    color: AppColors.descriptionColor,
                  ),
                  
                ],
              ),
            ],
          ),
          SizedBox(height: 19.h,),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/icons/reorder.png'),
                SizedBox(width: 4.w,),
                TextWidget(
                  're_order'.translate,
                  fontSize: 12.sp,
                  color: AppColors.dotColor,
                ),
              ],
            ),

        ],
      ),
    );
  }
}
