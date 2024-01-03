import '../progress_yearly_page/widgets/caloriegraph_item_widget.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProgressYearlyPage extends StatefulWidget {
  const ProgressYearlyPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProgressYearlyPageState createState() => ProgressYearlyPageState();
}

class ProgressYearlyPageState extends State<ProgressYearlyPage>
    with AutomaticKeepAliveClientMixin<ProgressYearlyPage> {
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
                            width: 113.h,
                            padding: EdgeInsets.symmetric(vertical: 9.v),
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
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                                Text(
                                  "2022",
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainerMedium,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightBlueGray600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
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
                      _buildCalorieGraph(context),
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
  Widget _buildCalorieGraph(BuildContext context) {
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
        return CaloriegraphItemWidget();
      },
    );
  }
}
