import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dr_app/widgets/app_bar/appbar_title.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_outlined_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RecordsFoodNewEntryDefaultScreen extends StatelessWidget {
  RecordsFoodNewEntryDefaultScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mealDetailsController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController calvalueController = TextEditingController();

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
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildKindsOfFood(context),
              SizedBox(height: 20.v),
              _buildAmountOfFood(context),
              SizedBox(height: 20.v),
              _buildCaloriesOfFood(context),
              SizedBox(height: 20.v),
              _buildAddNote(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtons(context),
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
          top: 9.v,
          bottom: 22.v,
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
              text: "Food",
              margin: EdgeInsets.only(right: 39.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKindsOfFood(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kinds of food",
          style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: mealDetailsController,
          hintText: "Please write the details of meal",
          maxLines: 4,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAmountOfFood(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Amount of food",
          style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: amountController,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCaloriesOfFoodFrame(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calories of food",
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              width: 160.h,
              controller: calvalueController,
              hintText: "cal",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 16.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCaloriesOfFoodTimeFrame(BuildContext context) {
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
            Container(
              height: 50.v,
              width: 160.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCarbonTime,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCaloriesOfFood(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCaloriesOfFoodFrame(context),
        _buildCaloriesOfFoodTimeFrame(context),
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
              controller: suggestedController,
              hintText: "Suggested",
              textInputAction: TextInputAction.done,
              maxLines: 6,
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
  Widget _buildButtons(BuildContext context) {
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
