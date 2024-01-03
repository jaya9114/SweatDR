import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/profile_health_monitoring_page/profile_health_monitoring_page.dart';
import 'package:dr_app/presentation/profile_page/profile_page.dart';
import 'package:dr_app/presentation/progress_weekly_tab_container_page/progress_weekly_tab_container_page.dart';
import 'package:dr_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileHealthMonitoringContainerScreen extends StatelessWidget {
  ProfileHealthMonitoringContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.profileHealthMonitoringPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Records:
        return AppRoutes.profileHealthMonitoringPage;
      case BottomBarEnum.Progress:
        return AppRoutes.progressWeeklyTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profileHealthMonitoringPage:
        return ProfileHealthMonitoringPage();
      case AppRoutes.progressWeeklyTabContainerPage:
        return ProgressWeeklyTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
