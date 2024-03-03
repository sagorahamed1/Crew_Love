import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/utils/dimentions.dart';

import '../../../../routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_back_and_next_botton.dart';
import '../../../widgets/custom_text.dart';
import 'inner_widgets/multi_selector_container.dart';

class CreateAccountSessionTypeScreen extends StatelessWidget {
   CreateAccountSessionTypeScreen({super.key});
   final List _items = ['Track Sessions', 'Tempo', 'Social Runs', 'Hills', 'Long Runs', 'Trail', 'All of the Above'];
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




              Expanded(child: MultiSelectorContainer(itemsList: _items,selectedItems: selectedItems,)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
                child:           Row(
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

                        Get.toNamed(AppRoutes.createAccountTrainingTypeScreen);
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

