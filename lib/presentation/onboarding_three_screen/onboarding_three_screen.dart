import '../onboarding_three_screen/widgets/workoutoptions_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              Container(
                width: 265.h,
                margin: EdgeInsets.only(
                  left: 35.h,
                  right: 34.h,
                ),
                child: Text(
                  "How SweatDR can assist you?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displaySmallSemiBold.copyWith(
                    height: 1.24,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
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
              SizedBox(height: 20.v),
              SizedBox(
                height: 483.v,
                width: 335.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildWorkoutOptions(context),
                    CustomElevatedButton(
                      width: 335.h,
                      text: "Next",
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkoutOptions(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 23.h,
          bottom: 19.v,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 101.v,
            crossAxisCount: 2,
            mainAxisSpacing: 40.h,
            crossAxisSpacing: 40.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return WorkoutoptionsItemWidget();
          },
        ),
      ),
    );
  }
}
