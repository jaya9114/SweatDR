import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 376.h,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildProfileCard(context),
              SizedBox(height: 18.v),
              _buildDateOfBirth(
                context,
                dateOfBirth: "Name",
                dec: "Sarah Russell",
              ),
              _buildDateOfBirth(
                context,
                dateOfBirth: "Date of birth",
                dec: "Dec 3, 1991",
              ),
              _buildDateOfBirth(
                context,
                dateOfBirth: "Gender",
                dec: "Female",
              ),
              _buildDateOfBirth(
                context,
                dateOfBirth: "Weight",
                dec: "65",
              ),
              _buildDateOfBirth(
                context,
                dateOfBirth: "Height",
                dec: "167",
              ),
              SizedBox(height: 24.v),
              _buildHealthInformation(
                context,
                text: "Health Monitoring",
              ),
              SizedBox(height: 8.v),
              _buildHealthInformation(
                context,
                text: "Health Information",
              ),
              SizedBox(height: 8.v),
              _buildHealthInformation(
                context,
                text: "Health Goals",
              ),
              SizedBox(height: 18.v),
              _buildHealthInformation(
                context,
                text: "Privacy Policy",
              ),
              SizedBox(height: 5.v),
               SizedBox(height: 18.v),
              _buildBottomImg(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileCard(BuildContext context) {
    return Container(
      height: 193.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 73.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse2,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "Sarah Russell",
                    style: CustomTextStyles.titleMediumSecondaryContainer,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "(704) 555-0127",
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "michael.mitc@example.com",
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 10.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Profile",
                      style: CustomTextStyles.titleMediumCatamaranBluegray600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDateOfBirth(
    BuildContext context, {
    required String dateOfBirth,
    required String dec,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dateOfBirth,
            style: CustomTextStyles.titleSmallSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
          Spacer(),
          Text(
            dec,
            style: CustomTextStyles.titleSmallMedium.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 5.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHealthInformation(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBluegray501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: CustomTextStyles.titleSmallSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(right: 5.h),
          ),
        ],
      ),
    );
  }
 Widget _buildBottomImg(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      // Set the background color as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/Records.png', // Replace with your image path
            width: 80.0,
            height: 80.0,
          ),
          Image.asset(
            'assets/images/progress.png', // Replace with your image path
            width: 80.0,
            height: 80.0,
          ),
          Image.asset(
            'assets/images/profile.png', // Replace with your image path
            width: 80.0,
            height: 80.0,
          ),
        ],
      ),
    );
  }

}
