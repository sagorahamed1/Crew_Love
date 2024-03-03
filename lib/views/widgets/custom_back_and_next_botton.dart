
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:love_crew/views/widgets/custom_text.dart';

import '../../utils/dimentions.dart';

class CustomBackAndNextBotton extends StatelessWidget {
  final VoidCallback? ontap;
  final Color? borderColor;
  final Color? bottonColor;
  final Color? textColor;
  final String? text;

  CustomBackAndNextBotton(
      {this.ontap,
        this.borderColor,
        this.bottonColor,
        this.textColor,
        this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: bottonColor,
          border: Border.all(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
        ),
        child: CustomText(
          text: "$text",
          color: textColor ?? Colors.black,
          top: 6.h,
          bottom: 6.h,
          left: 45.w,
          right: 45.w,
        ),
      ),
    );
  }
}
