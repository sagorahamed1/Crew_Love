import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../controller/submission_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/dimentions.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import 'show_image_picker.dart';

class CrewNameSection extends StatelessWidget {
  CrewNameSection({
    super.key,
    required this.showImagePicker,
  });

  final ShowImagePicker showImagePicker;
  SubmissionController submissionController = Get.put(SubmissionController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: AppStrings.crewName,
                    fontsize: 15.sp,
                    fontName: 'Helvetica Neue',
                  ),
                  //=====================================> TextFormField Section <======================================
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 34.h,
                    child: TextFormField(
                      cursorColor: AppColors.hintColor,
                      controller: submissionController.nameController,
                    ),
                  ),
                  SizedBox(height: 28.h),
                  //=====================================> Crew Leaders Button Section <======================================
                  CustomText(
                    text: AppStrings.crewLeaders,
                    fontsize: 15.sp,
                    fontName: 'Helvetica Neue',
                  ),
                  SizedBox(height: 12.h),
                  CustomButton(
                    ontap: () {},
                    text: AppStrings.addLeader,
                    borderColor: AppColors.primaryColor,
                    textColor: AppColors.primaryColor,
                    suffixIcon: SvgPicture.asset(AppIcons.closeOutline),
                  ),
                  //=====================================> Crew Leaders Button Section <======================================
                  SizedBox(height: 24.h),
                  CustomText(
                    text: AppStrings.sessions,
                    fontsize: 15.sp,
                    fontName: 'Helvetica Neue',
                  ),
                  SizedBox(height: 12.h),
                  CustomButton(
                    ontap: () {},
                    text: AppStrings.addSession,
                    borderColor: AppColors.primaryColor,
                    textColor: AppColors.primaryColor,
                    suffixIcon: SvgPicture.asset(AppIcons.closeOutline),
                  ),
                  SizedBox(height: 30.h),
                  //=====================================> Upload Cover Photo Section <======================================
                  CustomText(
                    text: AppStrings.uploadPhoto,
                    fontsize: 15.sp,
                    fontName: 'Helvetica Neue',
                  ),
                  SizedBox(height: 37.h),
                  Center(
                    child: Column(
                      children: [
                        submissionController.image != null
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                        width: 1.w,
                                        color: AppColors.primaryColor)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 95.w, vertical: 9.h),
                                  child: Image.memory(
                                    submissionController.image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    border: Border.all(
                                        width: 1.w,
                                        color: AppColors.primaryColor)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 95.w, vertical: 9.h),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            showImagePicker
                                                .showImagePickerOption(context);
                                          },
                                          child: Image.network(
                                            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                                            width: 67.w,
                                            height: 67.h,
                                          )),
                                      CustomText(
                                        text: 'Select Image',
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 153.w,
                      child: const Divider(
                        color: Colors.black,
                      ),
                    ),
                    CustomText(
                      text: 'Or',
                      fontsize: 14.sp,
                      fontWeight: FontWeight.w700,
                      fontName: 'Helvetica Neue',
                    ),
                    SizedBox(
                      width: 153.w,
                      child: const Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                //================================> PickImageFromCamera Section <==================================
                SizedBox(height: 29.h),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    submissionController.pickImageFromCamera();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.primaryColor),
                      borderRadius:
                          BorderRadius.circular(Dimensions.radiusDefault.r),
                    ),
                    child: SizedBox(
                      width: 273.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.camera_alt,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 8.w),
                            CustomText(
                              text: AppStrings.openCamera,
                              color: AppColors.primaryColor,
                              fontName: 'Helvetica Neue',
                              fontsize: 15.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
                //========================================> Button Section <=======================================
                SizedBox(height: 28.h),
                Center(
                  child: CustomBackAndNextBotton(
                    ontap: () {},
                    text: AppStrings.submit,
                    bottonColor: AppColors.primaryColor,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            )
          ],
        ),
      ),
    );
  }
}
