import 'package:get/get.dart';

import '../views/screens/onboarding_section/create_account_with_email/create_account_with_email_screen.dart';
import '../views/screens/onboarding_section/create_account_with_google/create_account_with_fb_google_screen.dart';
import '../views/screens/onboarding_section/create_account_with_location/create_account_with_location_screen.dart';
import '../views/screens/onboarding_section/log_in/log_in_screen.dart';
import '../views/screens/submissionScreen/submission_screen.dart';

class AppRoutes {
   static const String logInScreen = "/LogInScreen.dart";
   static const String createAccountWithFbGoogleScreen = "/CreateAccountWithFbGoogleScreen.dart";
   static const String createAccountWithEmailScreen = "/CreateAccountWithEmailScreen.dart";
   static const String createAccountWithLocationScreeen = "/CreateAccountWithLocationScreeen.dart";
   static const String submissionScreen = "/submission_screen.dart";



   static List<GetPage> get routes => [
     GetPage(name: logInScreen, page: () => LogInScreen()),
     GetPage(name: createAccountWithFbGoogleScreen, page: () => CreateAccountWithFbGoogleScreen()),
     GetPage(name: createAccountWithEmailScreen, page: () => CreateAccountWithEmailScreen()),
     GetPage(name: createAccountWithLocationScreeen, page: () => CreateAccountWithLocationScreeen()),
     GetPage(name: submissionScreen, page: () => SubmissionScreen()),


   ];
}