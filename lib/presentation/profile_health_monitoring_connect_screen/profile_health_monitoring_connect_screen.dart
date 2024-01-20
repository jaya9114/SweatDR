import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileHealthMonitoringConnectScreen extends StatelessWidget {
  const ProfileHealthMonitoringConnectScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 376.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 286.v,
                width: 288.h,
              ),
              SizedBox(height: 45.v),
              SizedBox(
                width: 331.h,
                child: Text(
                  "Connect SweatDR with the Fitbit app to seamlessly access your health data on your iPhone and across other compatible applications.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.titleMediumSecondaryContainer_1.copyWith(
                    height: 1.63,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProfileHealthFrame(
                      context,
                      userImage: ImageConstant.imgGroup,
                      fitbitLabel: "SweatDR",
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(
                        top: 29.v,
                        bottom: 27.v,
                      ),
                    ),
                    _buildProfileHealthFrame(
                      context,
                      userImage: ImageConstant.imgVscodeIconsFileTypeFitbit,
                      fitbitLabel: "Fitbit",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildConnectButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 37.v,
      title: AppbarSubtitleTwo(
        text: "Cancel",
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildConnectButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Connect",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 61.v,
      ),
    );
  }

  /// Common widget
  Widget _buildProfileHealthFrame(
    BuildContext context, {
    required String userImage,
    required String fitbitLabel,
  }) {
    return Column(
      children: [
        Container(
          height: 60.v,
          width: 70.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: CustomImageView(
            imagePath: userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          fitbitLabel,
          style: CustomTextStyles.titleMediumSecondaryContainer.copyWith(
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
