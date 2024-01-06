import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/onboarding_three_one_screen/onboarding_three_one_screen.dart';
import 'package:dr_app/widgets/custom_checkbox_button.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:dr_app/widgets/custom_icon_button.dart';
import 'package:dr_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildRowWithImageAndText(context),
                SizedBox(height: 15.v),
                Text(
                  "Welcome Back",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Login to Your Account",
                  style: CustomTextStyles.titleMediumBluegray600,
                ),
                SizedBox(height: 25.v),
                _buildColumnWithEmail(context),
                SizedBox(height: 14.v),
                _buildColumnWithPassword(context),
                SizedBox(height: 8.v),
                _buildRowWithRememberMeAndForgotPassword(context),
                SizedBox(height: 21.v),
                CustomElevatedButton(
                   onPressed: () {
            // Add functionality for the button
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingThreeOneScreen()),
            );
          },
                  text: "Login",
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                ),
                SizedBox(height: 9.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: CustomTextStyles.labelLargeBluegray400Medium,
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: CustomTextStyles.labelLargeDeeppurple500,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 23.v),
                _buildRowWithOrLoginWithIcons(context),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 77.h,
                      right: 89.h,
                    ),
                    child: Row(
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
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithImageAndText(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 74.h,
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
  Widget _buildColumnWithEmail(BuildContext context) {
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
  Widget _buildColumnWithPassword(BuildContext context) {
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
  Widget _buildRowWithRememberMeAndForgotPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomCheckboxButton(
              text: "Remember me",
              value: rememberMe,
              onChange: (value) {
                rememberMe = value;
              },
            ),
          ),
          Text(
            "Forgot your password?",
            style: CustomTextStyles.labelLargeDeeppurple500Medium.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithOrLoginWithIcons(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 32.h,
        ),
        child: Row(
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
                "or Login with",
                style: CustomTextStyles.bodySmallBluegray400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 9.v,
              ),
              child: SizedBox(
                width: 125.h,
                child: Divider(
                  color: appTheme.gray300,
                  indent: 13.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
