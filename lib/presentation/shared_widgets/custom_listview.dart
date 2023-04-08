import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewBuilder extends StatelessWidget {
  final ScrollPhysics? physics;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;
  final Widget? dividerWidget;

  const CustomListViewBuilder({
    super.key,
    required this.itemBuilder,
    this.physics,
    required this.itemCount,this.dividerWidget,
    this.scrollDirection = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: scrollDirection,
      physics: (physics == null) ? const ScrollPhysics() : physics,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder: (BuildContext context, int index) =>
      (dividerWidget==null)? SizedBox(width: 9.w):dividerWidget!
    );
  }
}
