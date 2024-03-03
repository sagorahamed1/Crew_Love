
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../widgets/custom_text.dart';

class MultiSelectorContainer extends StatefulWidget {
  List itemsList;
  List selectedItems;
  MultiSelectorContainer({super.key, required this.itemsList,required this.selectedItems});

  @override
  State<MultiSelectorContainer> createState() => _MultiSelectorContainerState();
}

class _MultiSelectorContainerState extends State<MultiSelectorContainer> {



  void _selecteItem(String items){
    setState(() {
      if(widget.selectedItems.contains(items)){
        widget.selectedItems.remove(items);
      }else{
        widget.selectedItems.add(items);
      }
    });
  }

  @override
  Widget build(BuildContext context) {



    return Align(
      alignment: Alignment.center,
      child: GridView.builder(

        dragStartBehavior: DragStartBehavior.down,



        itemCount: widget.itemsList.length,
        gridDelegate:   const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:  3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 20,
        ),



        itemBuilder: (context, index) {
          String items =widget.itemsList[index];
          bool isSelected = widget.selectedItems.contains(items);


          return GestureDetector(
            onTap: (){
              setState(() {
                _selecteItem(items);
              });
            },



            child: Container(
              width: 111.w,
              height: 110.h,
              decoration:  ShapeDecoration(
                color: isSelected ? Color(0xff848282) : AppColors.whiteD9D9D9,
                shape: OvalBorder(),
              ),

              child: Center(
                child: Padding(
                  padding:  EdgeInsets.all(10.r),
                  child: CustomText(text: items, maxline: 3,color: isSelected ? Colors.white : Colors.black, ),
                ),
              ),
            ),



          );
        },
      ),
    );
  }
}