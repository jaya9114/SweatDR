import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconNavbar,
      activeIcon: ImageConstant.imgIconNavbar,
      title: "Records",
      type: BottomBarEnum.Records,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconNavbarBlueGray200,
      activeIcon: ImageConstant.imgIconNavbarBlueGray200,
      title: "Progress",
      type: BottomBarEnum.Progress,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconNavbarBlueGray20024x24,
      activeIcon: ImageConstant.imgIconNavbarBlueGray20024x24,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.v,
      decoration: BoxDecoration(
        color: appTheme.gray50,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    color: appTheme.blueGray200,
                    margin: EdgeInsets.only(top: 12.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.titleSmallBluegray200.copyWith(
                        color: appTheme.blueGray200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    color: appTheme.blueGray200,
                    margin: EdgeInsets.only(top: 11.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.titleSmallBluegray200.copyWith(
                        color: appTheme.blueGray200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Records,
  Progress,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
