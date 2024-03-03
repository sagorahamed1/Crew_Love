import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:love_crew/utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_strings.dart';
import '../../widgets/custom_text.dart';

class SubmissionSuccessScreen extends StatelessWidget {
  const SubmissionSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
        const Spacer(),
        SizedBox(height: 66.h),
        //=======================================> Welcome Text Section <=====================================
        CustomText(
          text: AppStrings.welcome,
          color: AppColors.primaryColor,
          fontsize: 32.sp,
          fontName: 'Helvetica Neue',
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 20.h),
        //=======================================> Two Man Image Section <=====================================
        SizedBox(
            width: 269.w, height: 140.h, child: Image.asset(AppImages.twoMan)),
        SizedBox(height: 35.h),
        //=======================================> Thanks For Text Section <=====================================
        CustomText(
          maxline: 4,
          text: AppStrings.thanksFor,
          color: AppColors.primaryColor,
          fontsize: 20.sp,
          fontName: 'Helvetica Neue',
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 206.h),
      ],
    ));
  }
}
