import 'package:flutter/material.dart';
import 'package:my_messenger/app/theme/app_theme.dart';

abstract final class AppThemeData {
  static final light = ThemeData(
    brightness: Brightness.light,
    extensions: [AppTheme.light],
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppTheme.light.primary,
      primary: AppTheme.light.primary,
      secondary: AppTheme.light.secondary,
      background: AppTheme.light.background,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppTheme.light.background,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      iconColor: AppTheme.light.primary,
      prefixIconColor: AppTheme.light.primary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 1,
            color: AppTheme.light.background,
            style: BorderStyle.none),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0,
            color: AppTheme.light.background,
            style: BorderStyle.none),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0,
            color: AppTheme.light.background,
            style: BorderStyle.none),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppTheme.light.primary,
      size: 16,
    ),
    scaffoldBackgroundColor: AppTheme.light.background,
  );
  static final dark = ThemeData(
    brightness: Brightness.dark,
    extensions: [AppTheme.dark],
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppTheme.dark.primary,
      primary: AppTheme.dark.primary,
      secondary: AppTheme.dark.secondary,
      background: AppTheme.dark.background,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppTheme.dark.background,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      iconColor: AppTheme.dark.primary,
      prefixIconColor: AppTheme.dark.primary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0, color: AppTheme.dark.background, style: BorderStyle.none),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0, color: AppTheme.dark.background, style: BorderStyle.none),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0, color: AppTheme.dark.background, style: BorderStyle.none),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0, color: AppTheme.dark.background, style: BorderStyle.none),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            width: 0, color: AppTheme.dark.background, style: BorderStyle.none),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppTheme.dark.primary,
      size: 16,
    ),
  );
}
