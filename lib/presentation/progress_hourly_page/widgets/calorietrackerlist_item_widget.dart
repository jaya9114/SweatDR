import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalorietrackerlistItemWidget extends StatelessWidget {
  const CalorietrackerlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 11.v),
                  child: Text(
                    "Calories",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGameIconsMeal,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            height: 177.v,
            width: 302.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 31.v,
                          width: 42.h,
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
                        SizedBox(height: 14.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 5.h,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "750",
                                style: theme.textTheme.titleSmall,
                              ),
                              // Expanded(
                              //   child: Padding(
                              //     padding: EdgeInsets.only(top: 18.v),
                              //     child: Divider(
                              //       color: appTheme.teal50,
                              //       indent: 14.h,
                              //     ),
                              //   ),
                              // ),
                            ],
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
                        SizedBox(height: 14.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 5.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "250",
                                style: theme.textTheme.titleSmall,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.v),
                                  // child: Divider(
                                  //   color: appTheme.blueGray50,
                                  //   indent: 14.h,
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                         Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 5.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "0",
                                style: theme.textTheme.titleSmall,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.v),
                                  // child: Divider(
                                  //   color: appTheme.blueGray50,
                                  //   indent: 14.h,
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 33.h),
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
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 73.h),
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
                          "10:00",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 113.h),
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
                          "11:00",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 120.h),
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
                    padding: EdgeInsets.only(right: 80.h),
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
                          "13:00",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 40.h),
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
                          "14:00",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
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
                CustomImageView(
                  imagePath: ImageConstant.imgGraphicLine,
                  height: 30.v,
                  width: 242.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 40.v,
                    right: 14.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
