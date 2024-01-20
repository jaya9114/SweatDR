import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dr_app/widgets/app_bar/appbar_title.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_outlined_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RecordsWeightNewEntryDefaultScreen extends StatelessWidget {
  RecordsWeightNewEntryDefaultScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController kgvalueController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  TextEditingController suggestedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              _buildGoalWeightRow(context),
              SizedBox(height: 35.v),
              _buildFrame(context),
              SizedBox(height: 25.v),
              _buildAddNote(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonsRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 23.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "New Entry",
            ),
            AppbarSubtitle(
              text: "Weight",
              margin: EdgeInsets.only(right: 25.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoalWeightRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.h, 8.v, 8.h, 7.v),
      decoration: AppDecoration.outlineBluegray504,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClockDeepPurple500,
            height: 26.v,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
            ),
            child: Text(
              "Goal weight",
              style: CustomTextStyles.titleSmallBluegray800Medium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "55 ",
                    style: CustomTextStyles.titleMediumBluegray800SemiBold,
                  ),
                  TextSpan(
                    text: "kg",
                    style: CustomTextStyles.labelLargeBluegray800,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentWeightColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          right: 7.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current weight",
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
            SizedBox(height: 3.v),
            CustomTextFormField(
              width: 160.h,
              controller: kgvalueController,
              hintText: "kg",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL41,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Time",
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              width: 160.h,
              controller: timeController,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 15.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCarbonTime,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 50.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL41,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCurrentWeightColumn(context),
        _buildTimeColumn(context),
      ],
    );
  }

  /// Section Widget
   Widget _buildAddNote(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Add note",
        style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
      ),
      SizedBox(height: 5.v),
      Row(
        children: [
          Expanded(
            child: CustomTextFormField(
            
              hintText: "Suggested",
              textInputAction: TextInputAction.done,
              maxLines: 3,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 13.v,
              ),
            ),
          ),
          SizedBox(width: 5.v), // Adjust the spacing as needed
          Text(
            "0/250",
            style: TextStyle(
              // Set your additional text style here
            ),
          ),
        ],
      ),
    ],
  );
}

  /// Section Widget
  Widget _buildButtonsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 54.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "Cancel",
              margin: EdgeInsets.only(right: 12.h),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "Save",
              margin: EdgeInsets.only(left: 12.h),
              buttonStyle: CustomButtonStyles.outlineBlueGrayTL41,
            ),
          ),
        ],
      ),
    );
  }
}
