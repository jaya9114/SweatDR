import 'package:dr_app/presentation/successful_screen/successful_screen.dart';

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
              SizedBox(height: 10.v),
              SizedBox(
                height: 483.v,
                width: 335.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildWorkoutOptions(context),
                    
                    CustomElevatedButton(
                       onPressed: () {
            // Add functionality for the button
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SuccessfulScreen()),
            );
          },
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
  List<Map<String, dynamic>> workoutData = [
    {
      'name': 'Lose Weight',
    'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Gain Weight',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Get Fit',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Maintain Health',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Stress Reduction',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Diet Plan',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Nutritional Guidance',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    {
      'name': 'Meal Planning',
      'style': CustomTextStyles.titleSmallInterDeeppurple500,
    },
    // Add more workout data with different names and styles
  ];

  return Align(
    alignment: Alignment.topCenter,
    child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2.h,
        crossAxisSpacing: 10.h,
        childAspectRatio: 1.5, // Ensure square boxes by setting the aspect ratio to 1
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: workoutData.length,
      itemBuilder: (context, index) {
       return Container(
  height: 50.v, // Set a fixed height for each container
  child: Row(
    children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(8.0), // Set your desired padding value
          child: Container(
            // The width here includes the padding
            width: 30.h - 10.0, // Adjust width to account for padding
            child: WorkoutoptionsItemWidget(
              text: workoutData[index]['name'],
              textStyle: workoutData[index]['style'],
            ),
          ),
        ),
      ),
    ],
  ),
);


      },
    ),
  );

}
}
