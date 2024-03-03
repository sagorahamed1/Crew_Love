import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:love_crew/routes/app_routes.dart';
import 'package:love_crew/themes/themes.dart';
import 'package:love_crew/views/screens/onboarding_section/log_in/log_in_screen.dart';

import 'views/screens/submissionScreen/submission_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Love Crew',
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
              initialRoute: AppRoutes.submissionScreen,
              getPages: AppRoutes.routes,
         home: SubmissionScreen()
      ),
      designSize: Size(390, 844),
    );
  }
}





//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../../utils/app_colors.dart';
// import '../../../../widgets/custom_text.dart';
//
// class MultiSelectorContainer extends StatefulWidget {
//   final List itemsList;
//   final List selectedItems;
//
//   MultiSelectorContainer(
//       {Key? key, required this.itemsList, required this.selectedItems})
//       : super(key: key);
//
//   @override
//   State<MultiSelectorContainer> createState() => _MultiSelectorContainerState();
// }
//
// class _MultiSelectorContainerState extends State<MultiSelectorContainer> {
//   void _selectItem(String item) {
//     setState(() {
//       if (widget.selectedItems.contains(item)) {
//         widget.selectedItems.remove(item);
//       } else {
//         widget.selectedItems.add(item);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: (widget.itemsList.length / 3).ceil(),
//       itemBuilder: (context, rowIndex) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: List.generate(
//             3,
//                 (colIndex) {
//
//               final itemIndex = rowIndex * 3 + colIndex;
//
//
//               if (itemIndex >= widget.itemsList.length) {
//                 return SizedBox(width: 111.w, height: 110.h);
//               }
//               final item = widget.itemsList[itemIndex];
//               final isSelected = widget.selectedItems.contains(item);
//               var lastIndex = widget.itemsList.length-1;
//
//
//               return GestureDetector(
//                   onTap: () => _selectItem(item),
//                   child: Container(
//                     alignment: Alignment.centerRight,
//                     width: 111.w,
//                     height: 110.h,
//                     decoration: ShapeDecoration(
//                       color: isSelected
//                           ? Color(0xff848282)
//                           : AppColors.whiteD9D9D9,
//                       shape: OvalBorder(),
//                     ),
//                     child: Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(10.r),
//                         child: CustomText(
//                           text: item,
//                           maxline: 3,
//                           color: isSelected ? Colors.white : Colors.black,
//                         ),
//                       ),
//                     ),
//                   ));
//
//
//
//
//             },
//           ),
//         );
//       },
//     );
//   }
// }
//
// // Container(
// // width: 111.w,
// // height: 110.h,
// // decoration:  ShapeDecoration(
// // color: isSelected ? Color(0xff848282) : AppColors.whiteD9D9D9,
// // shape: OvalBorder(),
// // ),
// //
// // child: Center(
// // child: Padding(
// // padding:  EdgeInsets.all(10.r),
// // child: CustomText(text: items, maxline: 3,color: isSelected ? Colors.white : Colors.black, ),
// // ),
// // ),
// // ),
