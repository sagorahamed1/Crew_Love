import 'package:get/get.dart';

import '../views/screens/submissionScreen/submission_screen.dart';

class AppRoutes {
  static const String submissionScreen = "/submission_screen.dart";


  static List<GetPage> get routes => [
    GetPage(name: submissionScreen, page: () => SubmissionScreen()),

  ];
}