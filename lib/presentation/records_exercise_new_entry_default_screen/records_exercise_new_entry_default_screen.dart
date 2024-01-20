import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dr_app/widgets/app_bar/appbar_title.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_drop_down.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_outlined_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RecordsExerciseNewEntryDefaultScreen extends StatelessWidget {
  RecordsExerciseNewEntryDefaultScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController minvalueController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController suggestedvalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 19.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildKindsOfFood(context),
                        SizedBox(height: 22.v),
                        _buildAmountOfFood(context),
                        SizedBox(height: 20.v),
                        _buildFortyEight(context),
                        SizedBox(height: 20.v),
                        _buildBurnedCalories(context),
                        SizedBox(height: 20.v),
                        _buildAddNote(context),
                        SizedBox(height: 28.v),
                        
                        
                        _buildFrame(context),
                         SizedBox(height: 30.v),
                        
                        _buildConnectOtherApps(context),
                        SizedBox(height: 60.v),
                      ],
                    ),
                  ),
                ),
              ),
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
              text: "Exercise",
              margin: EdgeInsets.only(right: 18.h),
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
          "Kinds of exercise",
          style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: editTextController,
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
          "Intencity",
          style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
        ),
        SizedBox(height: 3.v),
        CustomDropDown(
          icon: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowup,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          hintText: "Select the intensity of exercise",
          items: dropdownItemList,
          onChanged: (value) {},
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExerciseDuration(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Exercise duration",
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              width: 160.h,
              controller: minvalueController,
              hintText: "min",
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
  Widget _buildTime(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildExerciseDuration(context),
        _buildTime(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildBurnedCalories(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Burned calories amount",
          style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          width: 160.h,
          controller: amountController,
          hintText: "cal",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.v,
          ),
        ),
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
              maxLines: 4,
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
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
     children: [
  Padding(
    padding: EdgeInsets.only(
      top: 6.v,
      bottom: 5.v,
    ),
    child: Row(
      children: [
        Container(
          width: 90.h,
          height: 2, // Set the desired height for the line
          color: appTheme.gray300, // Set the color to gray
        ),
        SizedBox(width: 12.h), // Add some spacing between the line and text
        Text(
          "or connect with",
          style: CustomTextStyles.bodySmallBluegray400,
        ),
        SizedBox(width: 12.h), // Add some spacing between the text and the next line
        Container(
          width: 90.h,
          height: 2, // Set the desired height for the line
          color: appTheme.gray300, // Set the color to gray
        ),
      ],
    ),
  ),
],



      ),
    );
  }

  /// Section Widget
  Widget _buildFitbit(BuildContext context) {
  return CustomElevatedButton(
    height: 60.v,
    text: "Fitbit",
    leftIcon: Container(
      margin: EdgeInsets.only(right: 6.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgVscodeIconsFileTypeFitbit,
        height: 24.adaptSize,
        width: 24.adaptSize,
      ),
    ),
    buttonStyle: CustomButtonStyles.fillOnPrimary.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 251, 251, 0.945)),
    ),
    buttonTextStyle: theme.textTheme.titleMedium!,
  );
}


  /// Section Widget
  Widget _buildGlucoseMonitor(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      text: "Glucose monitor",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMaterialSymbolsGlucose,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
     buttonStyle: CustomButtonStyles.fillOnPrimary.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 251, 251, 0.945)),
    ),
    buttonTextStyle: theme.textTheme.titleMedium!,
  );
  }

  /// Section Widget
  Widget _buildCreatineMonitor(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      text: "Creatine monitor",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFluentEmojiFl,
          height: 39.adaptSize,
          width: 27.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 251, 251, 0.945)),
    ),
    buttonTextStyle: theme.textTheme.titleMedium!,
  );
  }

  /// Section Widget
  Widget _buildConnectOtherApps(BuildContext context) {
    return Column(
      children: [
        _buildFitbit(context),
        SizedBox(height: 8.v),
        _buildGlucoseMonitor(context),
        SizedBox(height: 8.v),
        _buildCreatineMonitor(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Cancel",
        margin: EdgeInsets.only(right: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 12.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL41,
      ),
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
          _buildCancel(context),
          _buildSave(context),
        ],
      ),
    );
  }
}
