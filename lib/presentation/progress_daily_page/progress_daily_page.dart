import '../progress_daily_page/widgets/calorietracker_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProgressDailyPage extends StatefulWidget {
  const ProgressDailyPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProgressDailyPageState createState() => ProgressDailyPageState();
}

class ProgressDailyPageState extends State<ProgressDailyPage>
    with AutomaticKeepAliveClientMixin<ProgressDailyPage> {
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
                      Row(
                        children: [
                          Container(
                            width: 167.h,
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftBlueGray600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 4.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    "Today,Sep 23",
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainerMedium,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightBlueGray600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 4.v),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame728,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              top: 8.v,
                              bottom: 8.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      _buildCalorieTracker(context),
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
  Widget _buildCalorieTracker(BuildContext context) {
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
        return CalorietrackerItemWidget();
      },
    );
  }
}
