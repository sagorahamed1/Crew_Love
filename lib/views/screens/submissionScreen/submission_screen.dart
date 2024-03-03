import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:love_crew/utils/app_images.dart';
import 'package:love_crew/views/widgets/custom_text.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/dimentions.dart';
import '../../widgets/custom_back_and_next_botton.dart';
import '../../widgets/custom_button.dart';

class SubmissionScreen extends StatefulWidget {
  SubmissionScreen({super.key});

  @override
  State<SubmissionScreen> createState() => _SubmissionScreenState();
}

class _SubmissionScreenState extends State<SubmissionScreen> {
  TextEditingController _nameController = TextEditingController();
  Uint8List? _image;
  File? selectedIMage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStrings.submitCrew,
                  fontsize: 32.sp,
                  fontName: 'Familjen Grotesk',
                ),
                SizedBox(height: 25.h),
                GestureDetector(
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
                SizedBox(height: 29.h),
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
                    controller: _nameController,
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
                      _image != null
                          ? Container(
                              width: 296.w,
                              height: 98.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1.w,
                                      color: AppColors.primaryColor)),
                              child: Image.memory(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(
                              width: 296.w,
                              height: 98.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1.w,
                                      color: AppColors.primaryColor)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          showImagePickerOption(context);
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
                )
              ],
            ),
          ),
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
              _pickImageFromCamera();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius:
                    BorderRadius.circular(Dimensions.radiusDefault.r),
              ),
              child: SizedBox(
                width: 237.w,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.camera_alt,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(width: 9.w),
                      CustomText(
                        text: AppStrings.openCamera,
                        color: Colors.black,
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
          )
        ],
      ),
    );
  }

  //==================================> ShowImagePickerOption Function <===============================
  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: AppColors.AppBgColor,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.2,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 50.w,
                              color: AppColors.primaryColor,
                            ),
                            CustomText(text: 'Gallery')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 50.w,
                              color: AppColors.primaryColor,
                            ),
                            CustomText(text: 'Camera')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  //==================================> Gallery <===============================
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//==================================> Camera <===============================
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    // Navigator.of(context).pop();
  }
}
