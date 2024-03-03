import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/routes/app_routes.dart';
import 'package:love_crew/utils/app_images.dart';
import 'package:love_crew/utils/app_strings.dart';
import 'package:love_crew/utils/dimentions.dart';
import 'package:love_crew/views/widgets/custom_text.dart';

import '../../../../utils/app_colors.dart';

class LogInScreen extends StatelessWidget {
   LogInScreen({super.key});


  TextEditingController _emailContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        
        
        
              ///------------------------------crew love text-------------------------->
              CustomText(text: "CrewLove",fontWeight: FontWeight.w700,fontsize: 40.h,top: 115.h,bottom: 29.h,),
        
        
              ///------------------------------image text-------------------------->
              Center(child: Image.asset(AppImages.crewLovoImage,width: 112.w,height: 84.h,fit: BoxFit.fill,)),
        
        
              SizedBox(height: 77.h,),
        
        
              ///------------------------------user name or email text-------------------------->
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: AppStrings.usernameOrEmail,fontWeight: FontWeight.w500,bottom: 3.h,fontsize: 12.h,)),
        
        
              ///------------------------------eamil form-------------------------->
              SizedBox(
                height: 35.h,
                child: TextFormField(
                  cursorColor: AppColors.hintColor,
                  controller: _emailContr,
                  decoration: const InputDecoration(
                    hintText: "Email address here"
                  ),
                ),
              ),
        
        
              ///------------------------------password text-------------------------->
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: AppStrings.password,fontWeight: FontWeight.w500,bottom: 49.h,top: 26.h,fontsize: 12.h,)),
        
        
              ///------------------------------log in botton-------------------------->
              Container(
                height: 34.h,
                width: 73.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
                  color: AppColors.primaryColor,
                ),
                child: Center(child: CustomText(text: "Log In",color: Colors.white,)),
              ),
        
        
        
              ///------------------------------Don't have an account yet text-------------------------->
              CustomText(text: AppStrings.donotaveAnaccount,fontWeight: FontWeight.w500,bottom: 11.h,top: 81.h),
        
        
        
        
        
        
              ///------------------------------crew love text-------------------------->
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.createAccountWithFbGoogleScreen);
                },
                child: Container(
                  width: 122.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
                    border: Border.all(color: AppColors.primaryColor)
                  ),
                  child:Center(child: CustomText(text: "Join Now",color: AppColors.primaryColor,top: 6.h,bottom: 6.h,)) ,
                ),
              )
        
        
            ],
          ),
        ),
      ),
    );
  }
}
