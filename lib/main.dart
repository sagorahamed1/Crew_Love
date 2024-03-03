import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/routes/app_routes.dart';
import 'package:love_crew/themes/themes.dart';
import 'package:love_crew/views/screens/onboarding_section/log_in/log_in_screen.dart';

import 'views/screens/submissionScreen/submission_screen.dart';

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
            debugShowCheckedModeBanner: false,
        title: 'Love Crew',
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
              initialRoute: AppRoutes.logInScreen,
              getPages: AppRoutes.routes,
         home: LogInScreen()
      ),
      designSize: Size(390, 844),
    );
  }
}
