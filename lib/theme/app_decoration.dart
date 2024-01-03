import 'package:flutter/material.dart';
import 'package:dr_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray200 => BoxDecoration(
        color: appTheme.blueGray200,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple500,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepPurpleToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.09),
          end: Alignment(0.5, 1.19),
          colors: [
            appTheme.deepPurple100.withOpacity(0.5),
            appTheme.gray50.withOpacity(0.5),
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.22),
          colors: [
            appTheme.deepPurple100,
            theme.colorScheme.onPrimary.withOpacity(1),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray600,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray501 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray50.withOpacity(0.5),
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.blueGray50.withOpacity(0.5),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray502 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray50.withOpacity(0.6),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray503 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray50.withOpacity(0.37),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray504 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurple100,
        border: Border.all(
          color: appTheme.deepPurpleA100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeppurpleA100 => BoxDecoration(
        color: appTheme.deepPurple100,
        border: Border.all(
          color: appTheme.deepPurpleA100.withOpacity(0.3),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300.withOpacity(0.5),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300.withOpacity(0.35),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
