import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_text.dart';

class CreateAccountWithLocationScreeen extends StatelessWidget {
  const CreateAccountWithLocationScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
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





              CustomText(
                textAlign: TextAlign.start,
                text: AppStrings.whichLocationareyoubasedIn,
                bottom: 71.h,
              ),



              CustomText(
                textAlign: TextAlign.start,
                fontsize: 12.h,
                text: AppStrings.zipCodeCityState,
                fontWeight: FontWeight.w600,
                bottom: 71.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
