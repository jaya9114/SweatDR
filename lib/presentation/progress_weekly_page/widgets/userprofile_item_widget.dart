import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 3.h,
            ),
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
                      "In average 1,342 cal earned",
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
          SizedBox(height: 6.v),
          SizedBox(
            height: 172.v,
            width: 296.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 17.v),
                    child: SizedBox(
                      width: 259.h,
                      child: Divider(
                        color: appTheme.gray300,
                        endIndent: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 38.v),
                    child: SizedBox(
                      width: 260.h,
                      child: Divider(
                        color: appTheme.teal50,
                        endIndent: 2.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 77.v),
                    child: SizedBox(
                      width: 260.h,
                      child: Divider(
                        color: appTheme.blueGray50,
                        endIndent: 2.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "Cal",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Text(
                      "1500",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 69.v,
                    ),
                    child: Text(
                      "750",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 10.v,
                    ),
                    child: Text(
                      "0",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
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
                          "MON",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 41.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLine1,
                              height: 140.v,
                              width: 1.h,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "TUE",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine1,
                                height: 140.v,
                                width: 1.h,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "THU",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine1,
                                height: 140.v,
                                width: 1.h,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "WED",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine1,
                                height: 140.v,
                                width: 1.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 7.h),
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "FRI",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine1,
                                height: 140.v,
                                width: 1.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 8.h),
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "SAT",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
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
                      CustomImageView(
                        imagePath: ImageConstant.imgLine1,
                        height: 140.v,
                        width: 1.h,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "SUN",
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
