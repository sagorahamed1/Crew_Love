import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:love_crew/utils/app_colors.dart';

import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class WellComeScreen extends StatefulWidget {
  const WellComeScreen({super.key});

  @override
  State<WellComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WellComeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200.h),

            ///------------------------log image---------------------<>
            Image.asset(AppImages.crewLovoImage),

            ///------------------------------crew love text-------------------------->
            CustomText(
              text: "CrewLove",
              fontWeight: FontWeight.w700,
              fontsize: 40.h,
            ),

            ///--------------------------well come------------------------->
            CustomText(
              text: "Welcome",
              fontWeight: FontWeight.w700,
              fontsize: 40.h,
              bottom: 29.h,
              top: 91.h,
              color: AppColors.primaryColor,
            ),


            Lottie.asset(
              "assets/loading_lottie.json",
              width: 80.w,
              height: 40.h,
              fit: BoxFit.fitWidth,


            )

          ],
        ),
      ),
    );
  }
}
