import 'package:creativemindstask/presentation/pages/home_pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/utils/sharedPreferenceClass.dart';
import '../domain/language/appLocalization.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 769),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            title: 'task',
            debugShowCheckedModeBanner: false,
            locale: Locale(sharedPrefs.getLanguage()),
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ar', ''),
            ],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: ThemeData(
              fontFamily: 'Almarai',
            ),
            home: Directionality(
                textDirection: sharedPrefs.getLanguage() == "ar"
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: const HomeScreen()
            ),
          );
        },
      );
  }
}
