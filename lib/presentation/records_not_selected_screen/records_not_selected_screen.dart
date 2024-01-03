import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RecordsNotSelectedScreen extends StatelessWidget {
  const RecordsNotSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildZeroColumn(context),
                                    _buildOneHundredColumn(context),
                                    _buildTwoHundredColumn(context),
                                    _buildThreeHundredColumn(context),
                                    _buildFourHundredColumn(context),
                                    _buildFiveHundredColumn(context),
                                    _buildSixHundredColumn(context),
                                    _buildSevenHundredColumn(context),
                                    _buildEightHundredColumn(context),
                                    _buildNineHundredColumn(context),
                                    _buildOneThousandColumn(context),
                                    _buildOneThousandOneHundredColumn(context),
                                    _buildOneThousandTwoHundredColumn(context),
                                    _buildOneThousandThreeHundredColumn(
                                        context),
                                    _buildOneThousandFourHundredColumn(context),
                                    _buildOneThousandFiveHundredColumn(context),
                                    _buildOneThousandSixHundredColumn(context),
                                    _buildOneThousandSevenHundredColumn(
                                        context),
                                    _buildOneThousandEightHundredColumn(
                                        context),
                                    _buildOneThousandNineHundredColumn(context),
                                    _buildTwoThousandColumn(context),
                                    _buildTwoThousandOneHundredColumn(context),
                                    _buildTwoThousandTwoHundredColumn(context),
                                    _buildTwoThousandThreeHundredColumn(
                                        context),
                                    _buildTwoThousandFourHundredColumn(context)
                                  ])),
                          _buildDateActionButtonColumn(context),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 767.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.secondaryContainer)))
                        ]))))));
  }

  /// Section Widget
  Widget _buildZeroColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("00:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("01:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("02:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildThreeHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("03:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildFourHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("04:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildFiveHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("05:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildSixHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("06:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildSevenHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("07:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildEightHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("08:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildNineHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("09:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("10:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandOneHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("11:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandTwoHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("12:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandThreeHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("13:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandFourHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("14:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandFiveHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("15:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandSixHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("16:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandSevenHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("17:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandEightHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("18:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildOneThousandNineHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("19:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("20:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandOneHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("21:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandTwoHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("22:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandThreeHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("23:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildTwoThousandFourHundredColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20.h, 7.v, 20.h, 8.v),
        decoration: AppDecoration.outlineBluegray503,
        child: Text("24:00", style: CustomTextStyles.titleSmallBluegray20001));
  }

  /// Section Widget
  Widget _buildDateActionButtonColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPlay32x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 7.v, bottom: 4.v),
                    child: Text("Good Morning Sarah!",
                        style: CustomTextStyles.titleSmallSecondaryContainer)),
                Spacer(),
                CustomImageView(
                    imagePath:
                        ImageConstant.imgIconNotificationSecondarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v))
              ]),
              SizedBox(height: 19.v),
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
                                  .titleSmallSecondaryContainer_1),
                          SizedBox(height: 2.v),
                          Text("Sat,September 23",
                              style: CustomTextStyles.labelMediumBluegray400)
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray400,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin:
                            EdgeInsets.only(left: 12.h, top: 7.v, bottom: 9.v))
                  ]),
              SizedBox(height: 21.v),
              CustomElevatedButton(
                  height: 38.v,
                  width: 153.h,
                  text: "Add new item",
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgButtonVariant4,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillDeepPurple,
                  alignment: Alignment.centerLeft)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
