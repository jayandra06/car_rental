import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeIndigo50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo50.withOpacity(0.6),
        fontSize: 17.fSize,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;
  static get bodyLargeInterGray700 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray70013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray70015_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray70015_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumLightblue600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlue600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA70015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumff00b74c => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF00B74C),
        fontSize: 13.fSize,
      );
  static get bodyMediumff0a9eeb => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF0A9EEB),
      );
  static get bodyMediumff333333 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF333333),
      );
  static get bodyMediumff666666 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF666666),
      );
  static get bodyMediumff66666613 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF666666),
        fontSize: 13.fSize,
      );
  static get bodyMediumffff2626 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFF2626),
        fontSize: 13.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallRobotoBlack90010 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoBlack90010_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoff000000 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: Color(0XFF000000),
        fontSize: 10.fSize,
      );
  static get bodySmallff333333 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF333333),
      );
  // Headline style
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  // Title style
  static get titleLargeAbel => theme.textTheme.titleLarge!.abel;
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
