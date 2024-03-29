import 'package:get/get.dart';


import '../views/screens/onboarding_section/create_account_affiliation/create_account_affiliation_screen.dart';
import '../views/screens/onboarding_section/create_account_session_type/create_account_session_type_screen.dart';
import '../views/screens/onboarding_section/create_account_training_type/create_account_training_type_screen.dart';

import '../views/screens/addSessionScreen/add_session_screen.dart';

import '../views/screens/onboarding_section/create_account_with_email/create_account_with_email_screen.dart';
import '../views/screens/onboarding_section/create_account_with_google/create_account_with_fb_google_screen.dart';
import '../views/screens/onboarding_section/create_account_with_location/create_account_with_location_screen.dart';
import '../views/screens/onboarding_section/log_in/log_in_screen.dart';
import '../views/screens/onboarding_section/well_come/well_come_screen.dart';
import '../views/screens/submissionScreen/submission_screen.dart';
import '../views/screens/submissionSuccessScreen/submission_success_screen.dart';


class AppRoutes {
   static const String logInScreen = "/LogInScreen.dart";
   static const String createAccountWithFbGoogleScreen = "/CreateAccountWithFbGoogleScreen.dart";
   static const String createAccountWithEmailScreen = "/CreateAccountWithEmailScreen.dart";
   static const String createAccountWithLocationScreeen = "/CreateAccountWithLocationScreeen.dart";
   static const String createAccountSessionTypeScreen = "/CreateAccountSessionTypeScreen.dart";
   static const String createAccountTrainingTypeScreen = "/CreateAccountTrainingTypeScreen.dart";
   static const String createAccountAffiliationScreen = "/CreateAccountAffiliationScreen.dart";
   static const String wellComeScreen = "/WellComeScreen.dart";
   static const String submissionScreen = "/submission_screen.dart";
   static const String addSessionScreen = "/add_session_screen.dart";
   static const String submissionSuccessScreen = "/submission_success_screen.dart";




   static List<GetPage> get routes => [
     GetPage(name: logInScreen, page: () => LogInScreen()),
     GetPage(name: createAccountWithFbGoogleScreen, page: () => CreateAccountWithFbGoogleScreen()),
     GetPage(name: createAccountWithEmailScreen, page: () => CreateAccountWithEmailScreen()),
     GetPage(name: createAccountWithLocationScreeen, page: () => CreateAccountWithLocationScreeen()),
     GetPage(name: createAccountSessionTypeScreen, page: () => CreateAccountSessionTypeScreen()),
     GetPage(name: createAccountTrainingTypeScreen, page: () => CreateAccountTrainingTypeScreen()),
     GetPage(name: createAccountAffiliationScreen, page: () => CreateAccountAffiliationScreen()),
     GetPage(name: wellComeScreen, page: () => WellComeScreen()),
     GetPage(name: submissionScreen, page: () => SubmissionScreen()),
     GetPage(name: addSessionScreen, page: () => AddSessionScreen()),
     GetPage(name: submissionSuccessScreen, page: () => SubmissionSuccessScreen()),


   ];
}