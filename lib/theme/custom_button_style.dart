import 'dart:ui';
import 'package:scholarx/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillOnError => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineDeepOrange => OutlinedButton.styleFrom(
        backgroundColor: appTheme.black90001,
        side: BorderSide(
          color: appTheme.deepOrange50,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        side: BorderSide(
          color: appTheme.gray60001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineOnErrorContainer => OutlinedButton.styleFrom(
        backgroundColor: appTheme.black90001,
        side: BorderSide(
          color: theme.colorScheme.onErrorContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineOnErrorContainerTL10 =>
      OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        side: BorderSide(
          color: theme.colorScheme.onErrorContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
