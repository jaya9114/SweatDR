import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalorietrackerItemWidget extends StatelessWidget {
  const CalorietrackerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.v,
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Calories",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "In average 1,500 cal earned",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                right: 7.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.v,
                    width: 37.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Cal",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "1500",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 12.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "750",
                            style: theme.textTheme.titleSmall,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 10.v,
                                bottom: 8.v,
                              ),
                              child: Divider(
                                color: appTheme.teal50,
                                indent: 9.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "500",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.blueGray50,
                      indent: 42.h,
                      endIndent: 12.h,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "250",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "0",
                            style: theme.textTheme.titleSmall,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              child: Divider(
                                color: appTheme.gray300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 39.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "3:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 70.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "06:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 108.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "09:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 146.h,
                right: 152.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "12:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 114.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "15:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 76.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "18:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 38.h,
                bottom: 4.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "21:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: SizedBox(
                        height: 140.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "00:00",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGameIconsMeal,
            height: 32.adaptSize,
            width: 32.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 18.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGraphicLineBlueGray50,
            height: 141.v,
            width: 264.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 15.h,
              bottom: 23.v,
            ),
          ),
        ],
      ),
    );
  }
}
