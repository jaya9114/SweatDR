// ignore_for_file: must_be_immutable

import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/profile_health_monitoring_page/profile_health_monitoring_page.dart';
import 'package:dr_app/presentation/profile_page/profile_page.dart';
import 'package:dr_app/presentation/progress_weekly_tab_container_page/progress_weekly_tab_container_page.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_bottom_bar.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileHealthMonitoringOneScreen extends StatelessWidget {
  ProfileHealthMonitoringOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fitbitController = TextEditingController();

  TextEditingController glucoseMonitorController = TextEditingController();

  TextEditingController creatineMonitorController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 376.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              Text(
                "Health Tracking Integration",
                style: CustomTextStyles.titleMediumSecondaryContainer,
              ),
              SizedBox(height: 16.v),
              _buildProfileHealthMonitoring(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 36.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupGray900,
        margin: EdgeInsets.fromLTRB(15.h, 6.v, 336.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileHealthMonitoring(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: fitbitController,
                hintText: "Fitbit",
                hintStyle: CustomTextStyles.titleMediumBluegray600_1,
              ),
            ),
            Container(
              width: 66.h,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 5.v,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: Text(
                      "ON",
                      style: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ),
                  Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 7.h),
                    decoration: BoxDecoration(
                      color: appTheme.deepPurple100,
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: glucoseMonitorController,
                hintText: "Glucose Monitor",
                hintStyle: CustomTextStyles.titleMediumBluegray600_1,
              ),
            ),
            Container(
              width: 66.h,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 5.v,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillBluegray200.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: Text(
                      "OFF",
                      style: CustomTextStyles.titleSmallOnPrimary_1,
                    ),
                  ),
                  Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 2.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray300,
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: creatineMonitorController,
                hintText: "Creatine Monitor",
                hintStyle: CustomTextStyles.titleMediumBluegray600_1,
                textInputAction: TextInputAction.done,
              ),
            ),
            Container(
              width: 66.h,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 5.v,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: Text(
                      "ON",
                      style: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ),
                  Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 7.h),
                    decoration: BoxDecoration(
                      color: appTheme.deepPurple100,
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Records:
        return AppRoutes.profileHealthMonitoringPage;
      case BottomBarEnum.Progress:
        return AppRoutes.progressWeeklyTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profileHealthMonitoringPage:
        return ProfileHealthMonitoringPage();
      case AppRoutes.progressWeeklyTabContainerPage:
        return ProgressWeeklyTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
