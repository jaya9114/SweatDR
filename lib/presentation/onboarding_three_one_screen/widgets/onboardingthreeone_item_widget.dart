import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingthreeoneItemWidget extends StatelessWidget {
  const OnboardingthreeoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Female",
        style: CustomTextStyles.titleSmallSecondaryContainer,
      ),
      
       
    );
  }
   Widget _buildFrame2(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "male",
        style: CustomTextStyles.titleSmallSecondaryContainer,
      ),
      
       
    );
  }
}
