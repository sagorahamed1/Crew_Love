import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:love_crew/views/widgets/custom_text.dart';
import '../../utils/app_icons.dart';
import '../../utils/dimentions.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? ontap;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? bottonColor;
  final Color? textColor;
  final String? text;
  final Widget? width;

  CustomButton(
      {this.ontap,
        this.borderColor,
        this.bottonColor,
        this.textColor,
        this.text,
        this.prefixIcon,
        this.suffixIcon, this.width});

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
        child: SizedBox(
          width: 157.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(child: prefixIcon),
                CustomText(
                  text: "$text",
                  color: textColor ?? Colors.black,
                ),
                SizedBox(child: suffixIcon),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
