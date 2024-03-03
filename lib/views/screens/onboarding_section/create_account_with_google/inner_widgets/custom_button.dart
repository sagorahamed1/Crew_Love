



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custom_text.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback? onTap;
  final String? icon;
  final String? bottonText;
  final Color? borderColor;
  final Color? bottonColor;
  final Color? textColor;

  CustomButton({this.icon, this.bottonText, this.borderColor,
    this.bottonColor, this.textColor,this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.h,
        decoration: BoxDecoration(
            color: bottonColor,
            border: Border.all(color: borderColor ?? Colors.white)
        ),

        child: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            icon == null ? SizedBox() : Image.asset("$icon",width: 41.w,height: 41.h,),


            SizedBox(width:icon == null ? 100.w : 68.w,),

            CustomText(text: "$bottonText",top: 4.h, bottom: 4.h,fontWeight: FontWeight.w700,color: textColor?? Colors.white,),

          ],
        ),
      ),
    );
  }


}

