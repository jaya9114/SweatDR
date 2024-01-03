import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkoutoptionsItemWidget extends StatelessWidget {
  const WorkoutoptionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 40.v,
        ),
        decoration: AppDecoration.outlineDeepPurpleA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Text(
          "Lose Weight",
          style: CustomTextStyles.titleSmallInterDeeppurple500,
        ),
      ),
    );
  }
}
