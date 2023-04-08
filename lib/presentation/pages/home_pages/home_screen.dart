import 'dart:io';

import 'package:creativemindstask/presentation/pages/home_pages/widgets/category_section.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/city_section.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/home_slider.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/love_section.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/most_order_section.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/re_order_section.dart';
import 'package:creativemindstask/presentation/pages/home_pages/widgets/search_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: Platform.isAndroid ? true : false,
        bottom: false,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 20.h,start: 16.w,end: 16.w
            ),
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  const CitySection(),
                  SizedBox(height: 16.h,),
                  const SearchSection(),
                  SizedBox(height: 21.h,),
                  HomeSlider(),
                  SizedBox(height: 24.h,),
                  const CategorySection(),
                  const ReOrderSection(),
                  const MostOrderSection(),
                  SizedBox(height: 16.h,),
                  const MayLoveSection()

                ],
              ),
            ),
          )
        ));
  }
}
