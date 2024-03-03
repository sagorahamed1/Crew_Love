import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:love_crew/routes/app_routes.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/dimentions.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_text.dart';
sessionNameSection() {
  TextEditingController nameController = TextEditingController();
  TextEditingController whereController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 28.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: AppStrings.sessionName,
          fontsize: 15.sp,
          fontName: 'Helvetica Neue',
        ),
        //=====================================> TextFormField Section <======================================
        SizedBox(height: 8.h),
        SizedBox(
          height: 34.h,
          child: TextFormField(
            cursorColor: AppColors.hintColor,
            controller: nameController,
          ),
        ),
        //===============================================> When Section <=====================================
        SizedBox(height: 18.h),
        CustomText(
          text: AppStrings.when,
          fontsize: 15.sp,
          fontName: 'Helvetica Neue',
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _customDayButton('Monday'),
            SizedBox(width: 9.w),
            SvgPicture.asset(
              AppIcons.downArrow,
              height: 15.h,
            )
          ],
        ),
        //===============================================> Day Time Section <=====================================
        SizedBox(height: 15.h),
        Row(
          children: [
            _customDayButton('18:30'),
            SizedBox(width: 7.w),
            CustomText(
              text: '-',
              fontsize: 32.sp,
              fontWeight: FontWeight.w700,
              fontName: 'Helvetica Neue',
            ),
            SizedBox(width: 7.w),
            _customDayButton('20:00'),
          ],
        ),
        //========================================> Where Section <=======================================

        SizedBox(height: 15.h),
        CustomText(
          text: AppStrings.where,
          fontsize: 15.sp,
          fontName: 'Helvetica Neue',
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 34.h,
          child: TextFormField(
            cursorColor: AppColors.hintColor,
            controller: whereController,
          ),
        ),
        SizedBox(height: 24.h),
        CustomText(
          text: AppStrings.description,
          fontsize: 15.sp,
          fontName: 'Helvetica Neue',
        ),
        //========================================> Description Section <=======================================

        SizedBox(height: 8.h),
        TextField(
          controller: descriptionController,
          maxLines: 3,
          decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.w, color: Colors.black))),
        ),
        SizedBox(height: 44.h),
        //========================================> Button Section <=======================================
        Center(
          child: CustomBackAndNextBotton(
            ontap: () {
              Get.toNamed(AppRoutes.submissionSuccessScreen);
            },
            text: AppStrings.submit,
            bottonColor: AppColors.primaryColor,
            textColor: Colors.white,
          ),
        ),
        SizedBox(height: 16.h),
      ],
    ),
  );
}
_customDayButton(String titel) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.AppBgColor,
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
    ),
    child: CustomText(
      text: titel,
      color: Colors.black,
      top: 8.h,
      bottom: 7.h,
      left: 11.w,
      right: 11.w,
    ),
  );
}