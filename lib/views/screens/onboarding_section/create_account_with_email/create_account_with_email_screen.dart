import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/utils/app_colors.dart';
import 'package:love_crew/utils/app_images.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_text.dart';

class CreateAccountWithEmailScreen extends StatelessWidget {
  CreateAccountWithEmailScreen({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _reEnterPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///------------------------------crew love text-------------------------->
            CustomText(
              text: AppStrings.createAccount,
              fontWeight: FontWeight.w700,
              fontsize: 18.h,
              top: 87.h,
              bottom: 7.h,
            ),
            CustomText(
              text: AppStrings.findYourCrewToday,
              bottom: 71.h,
            ),



            ///-------------------------------------------up load profile picture or avater text-------------------------->
            Align(
              alignment: Alignment.center,
              child: CustomText(
                  text: AppStrings.uploadProfilePictureorAvatar,
                  fontsize: 12.h,
                  fontWeight: FontWeight.w500),
            ),

            SizedBox(
              height: 17.h,
            ),

            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 120.h,
                    width: 120.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Image.asset(
                      AppImages.profile_icon,
                    ),
                  ),
                ),
                Positioned(
                  top: 0.h,
                  right: 103.w,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Padding(
                        padding: EdgeInsets.all(5.r),
                        child: const Icon(
                          Icons.edit,
                          color: AppColors.primaryColor,
                        ),
                      )),
                )
              ],
            ),

            SizedBox(
              height: 36.h,
            ),

            _formSection(),
          ],
        ),
      ),
    );
  }

  _formSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          ///------------------------------user name or email text-------------------------->
          Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: AppStrings.usernameOrEmail,
                fontWeight: FontWeight.w500,
                bottom: 3.h,
                fontsize: 12.h,
              )),

          ///------------------------------eamil form-------------------------->
          SizedBox(
            height: 35.h,
            child: TextFormField(
              cursorColor: AppColors.hintColor,
              controller: _emailController,
              decoration: const InputDecoration(hintText: "Email address here"),
            ),
          ),

          SizedBox(
            height: 26.h,
          ),

          ///------------------------------Password text-------------------------->
          Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: AppStrings.password,
                fontWeight: FontWeight.w500,
                bottom: 3.h,
                fontsize: 12.h,
              )),

          ///------------------------------Password form-------------------------->
          SizedBox(
            height: 35.h,
            child: TextFormField(
              cursorColor: AppColors.hintColor,
              controller: _passwordController,
              decoration:
                  const InputDecoration(hintText: "Write password here"),
            ),
          ),

          SizedBox(
            height: 26.h,
          ),

          ///------------------------------Re-enter Password text-------------------------->
          Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: AppStrings.reenterPassword,
                fontWeight: FontWeight.w500,
                bottom: 3.h,
                fontsize: 12.h,
              )),

          ///------------------------------Re-enter Password form-------------------------->
          SizedBox(
            height: 35.h,
            child: TextFormField(
              cursorColor: AppColors.hintColor,
              controller: _reEnterPassword,
              decoration:
                  const InputDecoration(hintText: "Write password here"),
            ),
          ),

          SizedBox(
            height: 90.h,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ///--------------------------next botton---------------------------:
              CustomBackAndNextBotton(
                text: "Back",
                textColor: AppColors.primaryColor,
                borderColor: AppColors.primaryColor,
                bottonColor: Colors.white,
                ontap: () {
                  Get.back();
                },
              ),

              ///--------------------------next botton---------------------------:
              CustomBackAndNextBotton(
                text: "Next",
                textColor: Colors.white,
                borderColor: AppColors.primaryColor,
                bottonColor: AppColors.primaryColor,
                ontap: () {
                  // Get.back();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

