import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/profile_health_monitoring_page/profile_health_monitoring_page.dart';
import 'package:dr_app/presentation/profile_page/profile_page.dart';
import 'package:dr_app/presentation/progress_weekly_tab_container_page/progress_weekly_tab_container_page.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dr_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_bottom_bar.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecordsScreen extends StatelessWidget {
  RecordsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 7.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(top: 7.v, bottom: 9.v),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Column(children: [
                                Text("Today",
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer),
                                SizedBox(height: 2.v),
                                Text("Sat,September 23",
                                    style:
                                        CustomTextStyles.labelMediumBluegray400)
                              ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRightBlueGray400,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 12.h, top: 7.v, bottom: 9.v))
                        ]),
                    SizedBox(height: 21.v),
                    CustomElevatedButton(
                        height: 38.v,
                        width: 153.h,
                        text: "Add new item",
                        margin: EdgeInsets.only(left: 20.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.Variant4,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        buttonStyle: CustomButtonStyles.outlineBlueGrayTL41,
                        alignment: Alignment.centerLeft),
                    SizedBox(height: 30.v),
                    Column(children: [
                      _buildZero(context),
                      _buildOneHundred(context),
                      _buildTwoHundred(context),
                      _buildThreeHundred(context),
                      _buildFourHundred(context),
                      _buildFiveHundred(context),
                      _buildSixHundred(context),
                      _buildSevenHundred(context),
                      _buildEightHundred(context),
                      _buildNineHundred(context),
                      _buildOneThousand(context),
                      _buildOneThousandOneHundred(context),
                      _buildOneThousandTwoHundred(context)
                    ]),
                    SizedBox(height: 76.v),
                    _buildOneThousandFiveHundred(context),
                    _buildOneThousandSixHundred(context),
                    _buildOneThousandSevenHundred(context),
                    _buildOneThousandEightHundred(context),
                    _buildOneThousandNineHundred(context),
                    _buildTwoThousand(context),
                    _buildTwoThousandOneHundred(context),
                    _buildTwoThousandTwoHundred(context),
                    _buildTwoThousandThreeHundred(context),
                    _buildTwoThousandFourHundred(context)
                  ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgPlay32x32,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v)),
        title: AppbarSubtitleOne(
            text: "Good Morning Sarah!", margin: EdgeInsets.only(left: 5.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("00:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("01:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("02:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildThreeHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("03:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildFourHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("04:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildFiveHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("05:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildSixHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("06:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildSevenHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("07:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildEightHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("08:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildNineHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("09:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousand(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("10:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandOneHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("11:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandTwoHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("12:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandFiveHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("15:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandSixHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("16:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandSevenHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("17:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandEightHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("18:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandNineHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("19:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousand(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("20:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandOneHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("21:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandTwoHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("22:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandThreeHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("23:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandFourHundred(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("24:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
