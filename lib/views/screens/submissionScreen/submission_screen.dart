import 'package:flutter/material.dart';
import 'package:love_crew/utils/app_images.dart';

class SubmissionScreen extends StatelessWidget {
  const SubmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            child: Image.asset(AppImages.taber),
          )
        ],
      ),
    );
  }
}
