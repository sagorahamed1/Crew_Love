import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../../../../routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_text.dart';

class CreateAccountWithLocationScreeen extends StatelessWidget {
  const CreateAccountWithLocationScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///--------------------------create account text------------------------>
                  CustomText(
                    text: AppStrings.createAccount,
                    fontWeight: FontWeight.w700,
                    fontsize: 18.h,
                    top: 87.h,
                    bottom: 7.h,
                  ),
                  CustomText(
                    textAlign: TextAlign.start,
                    maxline: 3,
                    text: AppStrings.selectYourPreferences,
                    bottom: 39.h,
                  ),


                  ///--------------------------which location are you basd in text------------------------>
                  CustomText(
                    text: AppStrings.whichLocationareyoubasedIn,
                    bottom: 10.h,
                  ),

                  ///------------------------zip code text------------------------>
                  CustomText(
                    fontsize: 12.h,
                    text: AppStrings.zipCodeCityState,
                    fontWeight: FontWeight.w600,
                    bottom: 5.h,
                  ),


                  ///-----------------------------text field------------------->
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 42,
                        width: 290.w,
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 45.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white5E5E5E),
                        child: Center(
                            child: CustomText(
                          text: AppStrings.search,
                          color: Colors.white,
                          fontsize: 8.h,
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 66.h,
            ),

            ///----------------------------divider--------------------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1.h,
                  width: 153.w,
                  color: Colors.black,
                ),
                CustomText(
                  text: "Or",
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  height: 1.h,
                  width: 153.w,
                  color: Colors.black,
                )
              ],
            ),

            SizedBox(
              height: 43.h,
            ),

            ///------------------------------use current location screen------------------------->
            Container(
              height: 42.h,
              width: 218.w,
              color: AppColors.white5E5E5E,
              child: Center(
                  child: CustomText(
                text: AppStrings.useCurrentLocation,
                color: Colors.white,
              )),
            ),

            const Spacer(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Row(
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
                       Get.toNamed(AppRoutes.createAccountSessionTypeScreen);
                    },
                  )
                ],
              ),
            ),

            SizedBox(
              height: 78.h,
            ),
          ],
        ),
      ),
    );
  }
}
