import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile/Health Monitoring - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.profileHealthMonitoringContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile/Health Monitoring-connect",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.profileHealthMonitoringConnectScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile/Health Monitoring One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.profileHealthMonitoringOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile/Health Goals",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileHealthGoalsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recordsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records-not selected",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recordsNotSelectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records-selected",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recordsSelectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records/Food-new entry-default",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.recordsFoodNewEntryDefaultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records/Exercise-new entry-default",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.recordsExerciseNewEntryDefaultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Records/Glucose&Creatine-new entry- default",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .recordsGlucoseCreatineNewEntryDefaultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Records/Weight- new entry- default",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.recordsWeightNewEntryDefaultScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
