import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WorkoutoptionsItemWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const WorkoutoptionsItemWidget({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.v, // Set a fixed height for each container
      child: Align(
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
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
