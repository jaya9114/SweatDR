import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CaloriegraphItemWidget extends StatelessWidget {
  const CaloriegraphItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Calories",
                      style: CustomTextStyles.titleSmallOnPrimaryContainer,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "In average 500,000 cal earned",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGameIconsMeal,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(bottom: 8.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          SizedBox(
            height: 172.v,
            width: 331.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 38.h),
                          child: Text(
                            "Cal",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        height: 20.v,
                        width: 331.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: SizedBox(
                                  width: 289.h,
                                  child: Divider(
                                    color: appTheme.teal50,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "600,000",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.v),
                      SizedBox(
                        height: 20.v,
                        width: 331.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: SizedBox(
                                  width: 289.h,
                                  child: Divider(
                                    color: appTheme.blueGray50,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "400,000",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 48.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 43.h,
                            right: 5.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "0",
                                style: theme.textTheme.titleSmall,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 12.v,
                                    bottom: 6.v,
                                  ),
                                  child: Divider(
                                    color: appTheme.gray300,
                                    indent: 1.h,
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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 47.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2016",
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
                      left: 83.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2017",
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
                      left: 119.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2018",
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
                      left: 157.h,
                      right: 148.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2019",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 111.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2020",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 77.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 10.h),
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2021",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 37.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2022",
                          style: CustomTextStyles.labelMediumOnPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "2023",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
