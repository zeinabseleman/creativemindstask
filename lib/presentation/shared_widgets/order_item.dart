import 'package:creativemindstask/presentation/shared_widgets/section_item.dart';
import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/core/colors.dart';
import 'common_network_image.dart';

class OrderItem extends StatelessWidget {
final String? image;
final String title;
final String description;
final Widget? child;
final double? width;
final bool mayLove;
final String? beforePrice;
final String? afterPrice;


  const OrderItem({super.key,
this.image, required this.title,
required this.description,this.beforePrice,this.afterPrice,
this.child,this.width,this.mayLove=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
    border: Border.all(color: AppColors.searchTextField,width: 1)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (mayLove==false)
          ?Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
            ),
            child: CommonNetworkImageView(
            height: 120.h,
            url: image!,
            fit: BoxFit.cover,
            placeHolder: 'assets/images/Image 36.png',
        ),
          )
           :SectionItem(
            image: '',
            title: '',
            width: 150.w,
            mayLove: true,
          ),
        Padding(
          padding: EdgeInsetsDirectional.only(top: 8.h,
              bottom: 10.h,start: 4.w,end: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title,
                fontSize: 14.sp,
                color: Colors.black,
              ),
              SizedBox(
                height: 8.w,
              ),
              (mayLove==true)
              ? Row(
                children: [
                  TextWidget(
                    afterPrice!,
                    fontSize: 14.sp,
                    color: AppColors.cartCount,
                  ),
                  SizedBox(width: 10.w,),
                  Text(
                    beforePrice!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.descriptionColor,
                      decoration: TextDecoration.lineThrough
                    ),

                  ),
                ],
              )
              :TextWidget(
                description,
                fontSize: 14.sp,
                color: AppColors.descriptionColor,
              ),
              SizedBox(
                height: 10.w,
              ),
              child!
            ],
          ),
        )

      ],
    ),
    );
  }
}
