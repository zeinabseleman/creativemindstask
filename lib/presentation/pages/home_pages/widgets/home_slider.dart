import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../app/core/colors.dart';
import '../../../shared_widgets/common_network_image.dart';
import '../../../shared_widgets/common_slider.dart';


class HomeSlider extends StatelessWidget {

  HomeSlider({super.key,});

 final sliderController = CarouselController();

  final int pageIndex = 0;
  final indicatorController =
  PageController(viewportFraction: 1, keepPage: true, initialPage: 0);

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     CommonSlider(
      itemCount: 3,
      sliderItemBuilder: (context, index, realIndex) {
        return const CommonNetworkImageView(
          height: double.infinity,
          width: double.infinity,
          url: "",
          fit: BoxFit.fill,
          placeHolder: "assets/images/slider.png",
        );
      },
      controller: sliderController,
      reverse: false,
        ),
        SizedBox(height: 10.h,),
        SmoothPageIndicator(
          textDirection: TextDirection.rtl,
          controller: indicatorController,
          count: 3,
          axisDirection: Axis.horizontal,
          effect: ExpandingDotsEffect(
            paintStyle: PaintingStyle.fill,
            dotColor: AppColors.searchTextField,
            activeDotColor: AppColors.dotColor,
            dotHeight: 6.h,
            dotWidth: 6.w,
            radius: 3,
            spacing: 1,
          ),
        ),
      ],
    );
  }
}
