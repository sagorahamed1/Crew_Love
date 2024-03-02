import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../utils/app_colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(

    scaffoldBackgroundColor: AppColors.AppBgColor,
    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.maxFinite, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),

      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          // backgroundColor: Colors.white10,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.green),


    ///-------------------text field style---------------------------->
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
          borderSide: const BorderSide(color: Colors.black),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
        borderSide: const BorderSide(color: Colors.black),
      ),
      hintStyle: TextStyle(fontSize: 12.h, fontWeight: FontWeight.w400,color: AppColors.hintColor,fontStyle: FontStyle.italic, )
    )
  );





  final darkTheme = ThemeData.dark().copyWith(

    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.maxFinite, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),

      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          color: Colors.black54,
          elevation: 0,
          shadowColor: Colors.white10)
  );
}