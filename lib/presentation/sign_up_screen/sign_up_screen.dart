import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/login_screen/login_screen.dart';
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

  bool acceptTermsAndConditionsCheckBox =true;

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
                SizedBox(height: 10.v),
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
                  onPressed: () {
            // Add functionality for the button
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
                  text: "Create Account",
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                ),
                SizedBox(height: 4.v),
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
                SizedBox(height: 5.v),
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
        vertical: 80.v,
      ),
      decoration: AppDecoration.gradientDeepPurpleToGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 60.v,
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
      bottom: 5.v,
    ),
    child: Row(
      children: [
        Container(
          width: 112.h,
          height: 2, // Set the desired height for the line
          color: appTheme.gray300, // Set the color to gray
        ),
        SizedBox(width: 12.h), // Add some spacing between the line and text
        Text(
          "or Sign Up with",
          style: CustomTextStyles.bodySmallBluegray400,
        ),
        SizedBox(width: 12.h), // Add some spacing between the text and the next line
        Container(
          width: 112.h,
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
            padding: EdgeInsets.all(1.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcon,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(2.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconOnPrimaryy,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsGray900,
            ),
          ),
        ],
      ),
    );
  }
}
