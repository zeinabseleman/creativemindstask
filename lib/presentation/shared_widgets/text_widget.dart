
import 'package:flutter/material.dart';
import '../../app/core/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      this.title, {
        Key? key,
        this.fontSize,
        this.fontWeight = FontWeight.w300,
        this.color = AppColors.textColor,
        this.align = TextAlign.center,
        this.maxLines = 5,
        this.hasCustomStyle = false,
        this.textStyle ,
        this.height,

      }) : super(key: key);
  final String title;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign align;
  final int maxLines;
  final bool hasCustomStyle;
  final TextStyle ?textStyle;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:hasCustomStyle? textStyle: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          height: height,
        fontFamily: 'Almarai'
      ),
    );
  }
}

