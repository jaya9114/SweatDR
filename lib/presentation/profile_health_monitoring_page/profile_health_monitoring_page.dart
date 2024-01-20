import '../profile_health_monitoring_page/widgets/profilehealthmonitoring_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_title.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dr_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileHealthMonitoringPage extends StatelessWidget {
  ProfileHealthMonitoringPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 376.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 7.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search integration",
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Please choose one of the  integration",
                  style: CustomTextStyles.titleMediumSecondaryContainer,
                ),
              ),
              SizedBox(height: 12.v),
              _buildProfileHealthMonitoring(context),
              SizedBox(height: 20.v),
               _buildBottomImg(context),

            ],
          ),
        ),
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
  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarTitle(
        text: "Health Monitoring",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileHealthMonitoring(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProfilehealthmonitoringItemWidget();
        },
      ),
    );
  }
  
}
