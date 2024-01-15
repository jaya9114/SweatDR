import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage8,
                height: 240.v,
                width: 375.h,
              ),
              SizedBox(height: 26.v),
              Text(
                "Your Profile is Ready!",
                style: CustomTextStyles.displaySmallSemiBold,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 330.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 24.h,
                ),
               child: Text(
  "Great! Your profile has been successfully created. Now, we can help you achieve your health and fitness goals with personalized recommendations and content. Start exploring our app and get one step closer to a healthy lifestyle.\n\nIf you ever wish to update or modify your profile information, you can access it through the profile settings.",
  maxLines: 10,
  overflow: TextOverflow.ellipsis,
  style: CustomTextStyles.titleMediumBluegray600_1.copyWith(
    height: 1.40,
  ),
),

              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.only(
        left: 19.h,
        right: 20.h,
        bottom: 66.v,
      ),
    );
  }
}
