import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/controller/submission_controller.dart';
import 'package:love_crew/utils/app_images.dart';
import 'package:love_crew/views/screens/submissionScreen/InnerWidget/show_image_picker.dart';
import 'package:love_crew/views/widgets/custom_text.dart';
import '../../../utils/app_strings.dart';
import 'InnerWidget/crew_name_section.dart';

class SubmissionScreen extends StatefulWidget {
  SubmissionScreen({super.key});

  @override
  State<SubmissionScreen> createState() => _SubmissionScreenState();
}

class _SubmissionScreenState extends State<SubmissionScreen> {
  ShowImagePicker showImagePicker = ShowImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SubmissionController>(
        builder: (controller) {
          return Column(
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: AppStrings.submitCrew,
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
                    CrewNameSection(showImagePicker: showImagePicker)
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
