import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:love_crew/routes/app_routes.dart';
import 'package:love_crew/utils/app_images.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_text.dart';
import 'inner_widgets/custom_button.dart';

class CreateAccountWithFbGoogleScreen extends StatelessWidget {
  const CreateAccountWithFbGoogleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                ///------------------------------crew love text-------------------------->
                CustomText(text: AppStrings.createAccount,fontWeight: FontWeight.w700,fontsize: 18.h,top: 87.h,bottom: 7.h,),
                CustomText(text: AppStrings.findYourCrewToday,bottom: 30.h,),




                ///-----------------------------back arrow with log in----------------------------->
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_rounded),

                      CustomText(text: AppStrings.logIn),
                    ],
                  ),
                ),


                SizedBox(height: 48.h,),
                ///-----------------------------sing up with Strava botton---------------------------->
                CustomButton(
                  borderColor: AppColors.redFF0000,
                  bottonText: "Sign Up with Strava",
                  bottonColor: Colors.white,
                  icon: AppImages.strava_image,
                  textColor: AppColors.redFF0000,
                ),

                SizedBox(height: 36.h,),
                ///-----------------------------sing up with Apple botton---------------------------->
                CustomButton(
                  borderColor: Colors.black,
                  bottonText: "Sign Up with Apple",
                  bottonColor: Colors.black,
                  icon: AppImages.Apple_image,
                  textColor: Colors.white,
                ),



                SizedBox(height: 36.h,),
                ///-----------------------------sing up with Google botton---------------------------->
                CustomButton(
                  borderColor: AppColors.blue1B72E8,
                  bottonText: "Sign Up with Google",
                  bottonColor: AppColors.blue1B72E8,
                  icon: AppImages.google_image,
                  textColor: Colors.white,
                ),


              ],
            ),
          ),






          SizedBox(height: 60.h,),


          ///----------------------------divider--------------------------->
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                height: 1.h,
                width: 153.w,
                color: Colors.black,
              ),

              CustomText(text: "Or",fontWeight: FontWeight.w700,),

              Container(
                height: 1.h,
                width: 153.w,
                color: Colors.black,
              )
            ],
          ),





          SizedBox(height: 37.h,),

          ///-----------------------------sing up with email botton---------------------------->
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
            child: CustomButton(
              borderColor: Colors.black,
              bottonText: "Sign Up with Email",
              bottonColor: Colors.black,
              textColor: Colors.white,
              onTap: (){
                Get.toNamed(AppRoutes.createAccountWithEmailScreen);
              },
            ),
          ),




        ],
      ),

    );
  }
}

