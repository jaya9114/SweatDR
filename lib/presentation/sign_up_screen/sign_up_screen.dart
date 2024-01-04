// ignore_for_file: must_be_immutable

import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/custom_checkbox_button.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_icon_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool acceptTermsAndConditionsCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildLogo(context),
                SizedBox(height: 14.v),
                Text(
                  "Let’s Get Started",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 1.v),
                Text(
                  "Create Your Account",
                  style: CustomTextStyles.titleMediumBluegray600,
                ),
                SizedBox(height: 26.v),
                _buildEmailColumn(context),
                SizedBox(height: 14.v),
                _buildPasswordColumn(context),
                SizedBox(height: 8.v),
                _buildAcceptTermsAndConditionsCheckBox(context),
                SizedBox(height: 21.v),
                CustomElevatedButton(
                  text: "Create Account",
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                ),
                SizedBox(height: 9.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: CustomTextStyles.labelLargeBluegray400Medium,
                      ),
                      TextSpan(
                        text: "Login",
                        style: CustomTextStyles.labelLargeDeeppurple500,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 23.v),
                _buildFrameThirteenRow(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildFrameRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 75.h,
        vertical: 88.v,
      ),
      decoration: AppDecoration.gradientDeepPurpleToGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 54.v,
            width: 60.h,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Sweat",
                        style: theme.textTheme.displayMedium,
                      ),
                      TextSpan(
                        text: "Dr",
                        style: CustomTextStyles.displayMedium50,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Sweat Smart,Live Healthy",
                  style: CustomTextStyles.bodyMediumAliceDeeppurple300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: CustomTextStyles.titleMediumSecondaryContainer_1,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "Your email",
            hintStyle: CustomTextStyles.titleSmallBluegray20001,
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: CustomTextStyles.titleMediumSecondaryContainer_1,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            hintStyle: CustomTextStyles.titleSmallBluegray20001,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptTermsAndConditionsCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "Accept Terms and Conditions",
          value: acceptTermsAndConditionsCheckBox,
          onChange: (value) {
            acceptTermsAndConditionsCheckBox = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirteenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 112.h,
              child: Divider(
                color: appTheme.gray300,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "or Sign Up with",
              style: CustomTextStyles.bodySmallBluegray400,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 124.h,
              child: Divider(
                color: appTheme.gray300,
                indent: 12.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 83.h,
        right: 83.h,
        bottom: 35.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcons,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsOnprimary,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsGray900,
            ),
          ),
        ],
      ),
    );
  }
}
