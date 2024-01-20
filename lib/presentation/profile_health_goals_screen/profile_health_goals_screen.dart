import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_outlined_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileHealthGoalsScreen extends StatelessWidget {
  ProfileHealthGoalsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController weightGoalController = TextEditingController();

  TextEditingController weightGoalController1 = TextEditingController();

  TextEditingController weightGoalController2 = TextEditingController();

  TextEditingController healthGoalController = TextEditingController();

  TextEditingController healthGoalController1 = TextEditingController();

  TextEditingController dietPlanController = TextEditingController();

  TextEditingController nutritionGuidanceController = TextEditingController();

  TextEditingController mealPlanningController = TextEditingController();

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
                "What’s your goal?",
                style: CustomTextStyles.titleMediumSecondaryContainer,
              ),
              SizedBox(height: 16.v),
              _buildWeightGoal(context),
              SizedBox(height: 12.v),
              _buildWeightGoal1(context),
              SizedBox(height: 12.v),
              _buildWeightGoal2(context),
              SizedBox(height: 12.v),
              _buildHealthGoal(context),
              SizedBox(height: 12.v),
              _buildHealthGoal1(context),
              SizedBox(height: 12.v),
              _buildDietPlan(context),
              SizedBox(height: 12.v),
              _buildNutritionGuidance(context),
              SizedBox(height: 12.v),
              _buildMealPlanning(context),
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
      height: 36.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupGray900,
        margin: EdgeInsets.fromLTRB(15.h, 6.v, 336.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeightGoal(BuildContext context) {
    return CustomTextFormField(
      controller: weightGoalController,
      hintText: "Lose Weight",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildWeightGoal1(BuildContext context) {
    return CustomTextFormField(
      controller: weightGoalController1,
      hintText: "Gain Weight",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildWeightGoal2(BuildContext context) {
    return CustomTextFormField(
      controller: weightGoalController2,
      hintText: "Get Fit",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildHealthGoal(BuildContext context) {
    return CustomTextFormField(
      controller: healthGoalController,
      hintText: "Maintain Health",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildHealthGoal1(BuildContext context) {
    return CustomTextFormField(
      controller: healthGoalController1,
      hintText: "Stress Reduction",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildDietPlan(BuildContext context) {
    return CustomTextFormField(
      controller: dietPlanController,
      hintText: "Diet Plan",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildNutritionGuidance(BuildContext context) {
    return CustomTextFormField(
      controller: nutritionGuidanceController,
      hintText: "Nutrional Guidance",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
    );
  }

  /// Section Widget
  Widget _buildMealPlanning(BuildContext context) {
    return CustomTextFormField(
      controller: mealPlanningController,
      hintText: "Meal Planning",
      hintStyle: CustomTextStyles.titleSmallBluegray600,
      textInputAction: TextInputAction.done,
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
        bottom: 57.v,
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
