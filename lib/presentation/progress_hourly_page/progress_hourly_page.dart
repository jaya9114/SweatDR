import '../progress_hourly_page/widgets/calorietrackerlist_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProgressHourlyPage extends StatefulWidget {
  const ProgressHourlyPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProgressHourlyPageState createState() => ProgressHourlyPageState();
}

class ProgressHourlyPageState extends State<ProgressHourlyPage>
    with AutomaticKeepAliveClientMixin<ProgressHourlyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineGray300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftBlueGray600,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 3.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text(
                                "09:00-15:00",
                                style: CustomTextStyles
                                    .titleSmallOnPrimaryContainerMedium,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRightBlueGray600,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                top: 3.v,
                                bottom: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildCalorieTrackerList(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalorieTrackerList(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 24.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return CalorietrackerlistItemWidget();
      },
    );
  }
}
