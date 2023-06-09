import 'package:creativemindstask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      this.backGroundColor,
      required this.onPressed,
      this.textColor = Colors.white,
      this.isOpen = true,
      this.width,
      this.height,
      this.textSize = 14,
      this.fontWeight = FontWeight.w100,
      this.radius = 5.0,
      this.child,
      this.borderColor = Colors.transparent})
      : super(key: key);
  final String title;
  final Color borderColor;
  final Color? backGroundColor;
  final Color textColor;
  final double? textSize;
  final VoidCallback? onPressed;
  final bool isOpen;
  final double? width;
  final double? height;
  final FontWeight? fontWeight;
  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (width == null) ? 40.w : width,
      height: (height == null) ? 40.h : height,
      child: TextButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            primary: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            side: BorderSide(width: 0.5, color: borderColor)),
        onPressed: onPressed,
        child: Center(
            child: (child == null)
                ? TextWidget(
                    title,
                    color: textColor,
                    fontSize: textSize!,
                    fontWeight: fontWeight!,
                    height: 1.2,
                  )
                : child),
      ),
    );
  }
}
