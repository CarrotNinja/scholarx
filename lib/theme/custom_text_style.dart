import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
      );
  static get bodyLargeHanumanOnErrorContainer =>
      theme.textTheme.bodyLarge!.hanuman.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.7),
      );
  static get bodyMediumBlack9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.7),
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsWhiteA700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumRobotoBluegray900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumRobotoIndigoA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumRobotoOnErrorContainer15 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumb2000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XB2000000),
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  // Display text style
  static get displayLargeOnErrorContainer =>
      theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get displayLargeffffffff => theme.textTheme.displayLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get displayMediumOnErrorContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get displayMediumff000000 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get displayMediumffffffff => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Headline text style
  static get headlineLargePoppins =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 28.fSize,
      );
  static get headlineLargePoppinsBlack90001 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 30.fSize,
      );
  // Label text style
  static get labelLargeInterOnErrorContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  // Title text style
  static get titleMediumHanuman =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanff61ff17 =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFF61FF17),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanffcebdff =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFFCEBDFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanffdb00ff =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFFDB00FF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanffff0000 =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFFFF0000),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanffffd811 =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFFFFD811),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHanumanffffffff =>
      theme.textTheme.titleMedium!.hanuman.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
      );
}

extension on TextStyle {
  TextStyle get hanuman {
    return copyWith(
      fontFamily: 'Hanuman',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
