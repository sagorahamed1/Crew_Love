import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) =>
          GetMaterialApp(
        title: 'Love Crew',
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
        // home: Home()
      ),
      designSize: Size(390, 844),
    );
  }
}
