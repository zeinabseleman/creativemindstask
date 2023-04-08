import 'package:creativemindstask/presentation/app.dart';
import 'package:flutter/material.dart';

import 'app/utils/sharedPreferenceClass.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs().init();
  runApp(
   const MyApp(),
  );
}

