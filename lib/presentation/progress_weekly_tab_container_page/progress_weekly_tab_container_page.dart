import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/progress_daily_page/progress_daily_page.dart';
import 'package:dr_app/presentation/progress_hourly_page/progress_hourly_page.dart';
import 'package:dr_app/presentation/progress_monthly_page/progress_monthly_page.dart';
import 'package:dr_app/presentation/progress_weekly_page/progress_weekly_page.dart';
import 'package:dr_app/presentation/progress_yearly_page/progress_yearly_page.dart';
import 'package:dr_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dr_app/widgets/app_bar/appbar_title.dart';
import 'package:dr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProgressWeeklyTabContainerPage extends StatefulWidget {
  const ProgressWeeklyTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProgressWeeklyTabContainerPageState createState() =>
      ProgressWeeklyTabContainerPageState();
}

class ProgressWeeklyTabContainerPageState
    extends State<ProgressWeeklyTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 1349.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ProgressHourlyPage(),
                      ProgressDailyPage(),
                      ProgressWeeklyPage(),
                      ProgressMonthlyPage(),
                      ProgressYearlyPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
        text: "Progress",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 34.v,
      width: 347.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurple500,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray20001,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: appTheme.deepPurple500,
              width: 2.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Hourly",
            ),
          ),
          Tab(
            child: Text(
              "Daily",
            ),
          ),
          Tab(
            child: Text(
              "Weekly",
            ),
          ),
          Tab(
            child: Text(
              "Monthly",
            ),
          ),
          Tab(
            child: Text(
              "Yearly",
            ),
          ),
        ],
      ),
    );
  }
}
