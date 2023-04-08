import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonSlider extends StatefulWidget {
  final CarouselController controller;
  final int? itemCount;
  final bool reverse ;
  final Widget Function(BuildContext, int, int) sliderItemBuilder;
  final Function(int, CarouselPageChangedReason)? onChange;
  const CommonSlider(
  {super.key,
  required this.controller,
  required this.reverse,
  this.itemCount,
  required this.sliderItemBuilder,
  this.onChange
  });

  @override
  State<CommonSlider> createState() => _CommonSliderState();
}

class _CommonSliderState extends State<CommonSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: widget.controller,
      itemCount: widget.itemCount,
      itemBuilder: widget.sliderItemBuilder,
      options: CarouselOptions(
        reverse: widget.reverse,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayCurve: Curves.fastOutSlowIn,
        height: 150.h,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        initialPage: 0,
        onPageChanged: widget.onChange
      ),
    );
  }
}
