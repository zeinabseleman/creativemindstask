import 'package:creativemindstask/presentation/shared_widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_section.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
        const Expanded(child: SearchTextField(hintText: 'search_hint')),
        SizedBox(width:12.w),
        const CartSection()
      ],
    );
  }
}
