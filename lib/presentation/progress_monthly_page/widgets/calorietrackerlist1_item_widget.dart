import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Calorietrackerlist1ItemWidget extends StatelessWidget {
  const Calorietrackerlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
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
                      "In average 45,000 cal earned",
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
            height: 180.v,
            width: 329.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text(
                            "Cal",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        height: 20.v,
                        width: 329.h,
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
                                "60,000",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.v),
                      SizedBox(
                        height: 20.v,
                        width: 329.h,
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
                                "45,000",
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
                          padding: EdgeInsets.only(left: 35.h),
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
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 44.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "JAN",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 69.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "FEB",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 94.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "MAR",
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
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "APR",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 144.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "MAY",
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
                      right: 148.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "JUN",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 121.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 7.h),
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "JUL",
                          style: CustomTextStyles.labelMediumOnPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 100.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "AUG",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 75.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "SEP",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 50.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "OCT",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 25.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1,
                          height: 140.v,
                          width: 1.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 3.h),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "NOV",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLine1,
                        height: 140.v,
                        width: 1.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 3.h),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "DEC",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
