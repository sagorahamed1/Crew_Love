import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_strings.dart';
import '../../widgets/custom_text.dart';
import 'InnerWidget/session_name_section.dart';

class AddSessionScreen extends StatelessWidget {
  AddSessionScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    int maxLength = 5000;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 89.w,
                height: 90.w,
                child: Image.asset(
                  AppImages.taber,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CustomText(
              text: AppStrings.addSession,
              fontsize: 32.sp,
              left: 27.w,
              fontName: 'Familjen Grotesk',
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.only(left: 9.w),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 12.w,
                    ),
                    SizedBox(width: 5.h),
                    CustomText(
                      text: AppStrings.back,
                      fontsize: 15.sp,
                      fontName: 'Familjen Grotesk',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 29.h),
            Expanded(
              child: SingleChildScrollView(
                child: sessionNameSection(),
              ),
            ),
          ],
        ));
  }
}
