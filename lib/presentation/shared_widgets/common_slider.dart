import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonSlider extends StatelessWidget {
  final CarouselController controller;
  final int? itemCount;
  final bool reverse ;
  final Widget Function(BuildContext, int, int) sliderItemBuilder;
  const CommonSlider(
  {super.key,
  required this.controller,
  required this.reverse,
  this.itemCount,
  required this.sliderItemBuilder,});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: itemCount,
      itemBuilder: sliderItemBuilder,
      options: CarouselOptions(
        reverse: reverse,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayCurve: Curves.fastOutSlowIn,
        height: 150.h,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        initialPage: 0,
      ),
    );
  }
}
