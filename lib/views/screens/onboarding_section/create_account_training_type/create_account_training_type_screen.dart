import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/dimentions.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_text.dart';
import '../create_account_session_type/inner_widgets/multi_selector_container.dart';

class CreateAccountTrainingTypeScreen extends StatelessWidget {
   CreateAccountTrainingTypeScreen({super.key});


   final List _items = ['Short Distance Specific', 'Marathon Specific', 'Ultra Specific', 'All of the Above'];
   List selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              ///--------------------------create account text------------------------>
              CustomText(
                text: AppStrings.createAccount,
                fontWeight: FontWeight.w700,
                fontsize: 18.h,
                top: 78.h,
                bottom: 7.h,
              ),
              CustomText(
                textAlign: TextAlign.start,
                maxline: 3,
                text: AppStrings.selectYourPreferences,
                bottom: 88.h,
              ),




              CustomText(
                text: AppStrings.sessionType,
                bottom: 39.h,
              ),




              ///-----------------------------multi selector container---------------------->
              Expanded(child:  MultiSelectorContainer(itemsList: _items, selectedItems: selectedItems,)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
                child:           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ///--------------------------back botton---------------------------:
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
                        Get.toNamed(AppRoutes.createAccountAffiliationScreen);
                        print("--------------------$selectedItems");

                      },
                    )
                  ],
                ),

              ),


              SizedBox(height: 78.h,)

            ],
          ),
        ),
      ),
    );
  }
}
