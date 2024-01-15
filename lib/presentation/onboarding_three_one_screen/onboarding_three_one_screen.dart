import '../onboarding_three_one_screen/widgets/onboardingthreeone_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_outlined_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
enum Gender { Female, Male }
class OnboardingThreeOneScreen extends StatelessWidget {
  OnboardingThreeOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController yYYYController = TextEditingController();

  TextEditingController kgController = TextEditingController();

  TextEditingController kgController1 = TextEditingController();

  TextEditingController cmController = TextEditingController();
String selectedGender = "female";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Page",
                style: CustomTextStyles.displaySmallSemiBold,
              ),
              SizedBox(height: 1.v),
              Container(
                width: 328.h,
                margin: EdgeInsets.symmetric(horizontal: 3.h),
                child: Text(
                  "We need these information to personalize your experience",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumBluegray600.copyWith(
                    height: 1.63,
                  ),
                ),
              ),
              SizedBox(height: 35.v),
              
                Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Gender",
        style: theme.textTheme.titleMedium,
      ),
    ),
    Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Row(
            children: [
              Radio(
                value: "female",
                groupValue: selectedGender,
                onChanged: (value) {
                  // Handle female radio button selection
                  selectedGender = value as String;
                },
              ),
              Text("Female"),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Radio(
                value: "male",
                groupValue: selectedGender,
                onChanged: (value) {
                  // Handle male radio button selection
                  selectedGender = value as String;
                },
              ),
              Text("Male"),
            ],
          ),
        ),
      ],
    ),
              SizedBox(height: 6.v),
              // _buildOnboardingThreeOne(context),
              SizedBox(height: 25.v),
              _buildFrame1(context),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 58.h),
                  child: Row(
                    children: [
                      _buildFrame2(context),
                       _buildFrame3(context),
                    ],
                  ),
                ),
              ),
              
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 58.h),
                  child: Row(
                    children: [
               SizedBox(height: 25.v),
              _buildFrame4(context),
                    
                    ],
                  ),
                ),
              ),
               
              
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingThreeOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 213.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return OnboardingthreeoneItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Year",
            style: CustomTextStyles.bodyMediumOnPrimaryContainer,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            width: 80.h,
            controller: yYYYController,
            hintText: "YYYY",
            hintStyle: CustomTextStyles.bodyMediumBluegray20001,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date of birth",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 6.v),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Day",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 3.v),
                  CustomOutlinedButton(
                    height: 38.v,
                    width: 50.h,
                    text: "DD",
                    buttonStyle: CustomButtonStyles.outlineBlueGray,
                    buttonTextStyle: CustomTextStyles.bodyMediumBluegray20001,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Month",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                    ),
                    SizedBox(height: 5.v),
                    CustomOutlinedButton(
                      height: 38.v,
                      width: 50.h,
                      text: "MM",
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL4,
                      buttonTextStyle: CustomTextStyles.bodyMediumBluegray20001,
                    ),
                  ],
                ),
              ),
              _buildFrame(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Column(
      children: [
        Text(
          "Current weight",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          width: 117.h,
          controller: kgController,
          hintText: "kg",
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Goal weight",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            width: 117.h,
            controller: kgController1,
            hintText: "kg",
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Height",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            width: 117.h,
            controller: cmController,
            hintText: "cm",
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 66.v,
      ),
    );
  }
}
