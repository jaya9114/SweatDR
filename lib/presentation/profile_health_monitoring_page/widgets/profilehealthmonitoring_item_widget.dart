import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilehealthmonitoringItemWidget extends StatelessWidget {
  const ProfilehealthmonitoringItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineDeeppurpleA100.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgVscodeIconsFileTypeFitbit,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              "Fitbit",
              style: CustomTextStyles.titleMediumBluegray800,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgEpSelect,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 6.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
