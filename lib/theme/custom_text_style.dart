import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumAliceDeeppurple300 =>
      theme.textTheme.bodyMedium!.alice.copyWith(
        color: appTheme.deepPurple300,
      );
  static get bodyMediumBluegray20001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMedium46 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 46.fSize,
      );
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displaySmallAliceDeeppurple500 =>
      theme.textTheme.displaySmall!.alice.copyWith(
        color: appTheme.deepPurple500,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallSemiBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray400Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray400Medium_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
      );
  static get labelLargeDeeppurple500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurple500,
      );
  static get labelLargeDeeppurple500Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurple500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDeeppurpleA100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA100,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  // Title text style
  static get titleMediumBluegray20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBluegray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleMediumBluegray800SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumCatamaranBluegray600 =>
      theme.textTheme.titleMedium!.catamaran.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDeeppurple500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleSmallBlue800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray20001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleSmallBluegray600Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleSmallBluegray800Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDeeppurple500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static get titleSmallInterBluegray600 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterDeeppurple500 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.deepPurple500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get alice {
    return copyWith(
      fontFamily: 'Alice',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }

  TextStyle get catamaran {
    return copyWith(
      fontFamily: 'Catamaran',
    );
  }
}
