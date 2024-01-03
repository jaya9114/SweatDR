import 'package:flutter/material.dart';
import 'package:dr_app/presentation/splash_screen/splash_screen.dart';
import 'package:dr_app/presentation/welcome_four_screen/welcome_four_screen.dart';
import 'package:dr_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dr_app/presentation/login_screen/login_screen.dart';
import 'package:dr_app/presentation/onboarding_three_one_screen/onboarding_three_one_screen.dart';
import 'package:dr_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:dr_app/presentation/successful_screen/successful_screen.dart';
import 'package:dr_app/presentation/profile_health_monitoring_container_screen/profile_health_monitoring_container_screen.dart';
import 'package:dr_app/presentation/profile_health_monitoring_connect_screen/profile_health_monitoring_connect_screen.dart';
import 'package:dr_app/presentation/profile_health_monitoring_one_screen/profile_health_monitoring_one_screen.dart';
import 'package:dr_app/presentation/profile_health_goals_screen/profile_health_goals_screen.dart';
import 'package:dr_app/presentation/records_screen/records_screen.dart';
import 'package:dr_app/presentation/records_not_selected_screen/records_not_selected_screen.dart';
import 'package:dr_app/presentation/records_selected_screen/records_selected_screen.dart';
import 'package:dr_app/presentation/records_food_new_entry_default_screen/records_food_new_entry_default_screen.dart';
import 'package:dr_app/presentation/records_exercise_new_entry_default_screen/records_exercise_new_entry_default_screen.dart';
import 'package:dr_app/presentation/records_glucose_creatine_new_entry_default_screen/records_glucose_creatine_new_entry_default_screen.dart';
import 'package:dr_app/presentation/records_weight_new_entry_default_screen/records_weight_new_entry_default_screen.dart';
import 'package:dr_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeFourScreen = '/welcome_four_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String onboardingThreeOneScreen = '/onboarding_three_one_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String successfulScreen = '/successful_screen';

  static const String profilePage = '/profile_page';

  static const String profileHealthMonitoringPage =
      '/profile_health_monitoring_page';

  static const String profileHealthMonitoringContainerScreen =
      '/profile_health_monitoring_container_screen';

  static const String profileHealthMonitoringConnectScreen =
      '/profile_health_monitoring_connect_screen';

  static const String profileHealthMonitoringOneScreen =
      '/profile_health_monitoring_one_screen';

  static const String profileHealthGoalsScreen = '/profile_health_goals_screen';

  static const String recordsScreen = '/records_screen';

  static const String recordsNotSelectedScreen = '/records_not_selected_screen';

  static const String recordsSelectedScreen = '/records_selected_screen';

  static const String recordsFoodNewEntryDefaultScreen =
      '/records_food_new_entry_default_screen';

  static const String recordsExerciseNewEntryDefaultScreen =
      '/records_exercise_new_entry_default_screen';

  static const String recordsGlucoseCreatineNewEntryDefaultScreen =
      '/records_glucose_creatine_new_entry_default_screen';

  static const String recordsWeightNewEntryDefaultScreen =
      '/records_weight_new_entry_default_screen';

  static const String progressHourlyPage = '/progress_hourly_page';

  static const String progressDailyPage = '/progress_daily_page';

  static const String progressWeeklyPage = '/progress_weekly_page';

  static const String progressWeeklyTabContainerPage =
      '/progress_weekly_tab_container_page';

  static const String progressMonthlyPage = '/progress_monthly_page';

  static const String progressYearlyPage = '/progress_yearly_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeFourScreen: (context) => WelcomeFourScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    onboardingThreeOneScreen: (context) => OnboardingThreeOneScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    successfulScreen: (context) => SuccessfulScreen(),
    profileHealthMonitoringContainerScreen: (context) =>
        ProfileHealthMonitoringContainerScreen(),
    profileHealthMonitoringConnectScreen: (context) =>
        ProfileHealthMonitoringConnectScreen(),
    profileHealthMonitoringOneScreen: (context) =>
        ProfileHealthMonitoringOneScreen(),
    profileHealthGoalsScreen: (context) => ProfileHealthGoalsScreen(),
    recordsScreen: (context) => RecordsScreen(),
    recordsNotSelectedScreen: (context) => RecordsNotSelectedScreen(),
    recordsSelectedScreen: (context) => RecordsSelectedScreen(),
    recordsFoodNewEntryDefaultScreen: (context) =>
        RecordsFoodNewEntryDefaultScreen(),
    recordsExerciseNewEntryDefaultScreen: (context) =>
        RecordsExerciseNewEntryDefaultScreen(),
    recordsGlucoseCreatineNewEntryDefaultScreen: (context) =>
        RecordsGlucoseCreatineNewEntryDefaultScreen(),
    recordsWeightNewEntryDefaultScreen: (context) =>
        RecordsWeightNewEntryDefaultScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
