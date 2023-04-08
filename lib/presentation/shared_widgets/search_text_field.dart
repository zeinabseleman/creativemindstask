import 'package:creativemindstask/domain/language/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/core/colors.dart';
import '../../app/utils/sharedPreferenceClass.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final VoidCallback? onEditingComplete;
  final int maxLine;
  final int minLine;
  final bool enabled;
  final VoidCallback? onTap;
  final FocusNode? searchFocusNode;
  const SearchTextField(
      {Key? key,
      this.controller,
      required this.hintText,
      this.onEditingComplete,
      this.searchFocusNode,
      this.onTap,
      this.maxLine = 5,
      this.minLine = 1,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.onChanged,
      this.onSubmit,
      this.enabled = true,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
       width: 259.w,
       height: 36.h,
       child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onFieldSubmitted: onSubmit,
        onEditingComplete: onEditingComplete,
        onTap: onTap,
        focusNode: searchFocusNode,
        enabled: enabled,
        maxLines: maxLine,
        minLines: minLine,
        showCursor: false,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        autocorrect: false,
        onChanged: onChanged,
        textAlign: (sharedPrefs.getLanguage() == "ar")
            ? TextAlign.right
            : TextAlign.left,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.searchTextField,
          hintText: hintText.translate,
          hintStyle: TextStyle(
            color: AppColors.textColor,
            height: 0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: Image.asset('assets/icons/search.png'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          //contentPadding: EdgeInsetsDirectional.only(top: 5.h, bottom),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          disabledBorder: InputBorder.none,
        ),
    ),
     );
  }
}
