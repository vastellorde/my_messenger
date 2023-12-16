import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.onBuildContext,
  generateStaticGetters: true,
)
class $_AppTheme {
  // Colors
  static const List<Color> primary = [
    AppColors.primary,
    AppColors.primary,
  ];
  static const List<Color> secondary = [
    AppColors.secondary,
    AppColors.secondary,
  ];
  static const List<Color> white = [
    AppColors.white,
    AppColors.white,
  ];
  static const List<Color> gray = [
    AppColors.gray,
    AppColors.gray,
  ];
  static const List<Color> black = [
    AppColors.black,
    AppColors.black,
  ];
  static const List<Color> background = [
    AppColors.background,
    AppColors.background,
  ];
  static const List<Color> graySecondary = [
    AppColors.graySecondary,
    AppColors.graySecondary,
  ];

  // Typography
  static final _h1 = GoogleFonts.plusJakartaSans(
    fontSize: 28,
    height: 33.6 / 28,
  );
  static final _h2 = GoogleFonts.plusJakartaSans(
    fontSize: 24,
    height: 32.4 / 24,
  );
  static final _h3 = GoogleFonts.plusJakartaSans(
    fontSize: 20,
    height: 27 / 20,
  );
  static final _h4 = GoogleFonts.plusJakartaSans(
    fontSize: 18,
    height: 24.3 / 18,
  );
  static final _h5 = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    height: 24 / 16,
  );
  static final _body = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    height: 21 / 14,
  );
  static final _caption = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    height: 18 / 12,
  );

  static final h1 = [
    _h1.copyWith(
      color: AppColors.black,
    ),
    _h1.copyWith(
      color: AppColors.white,
    )
  ];
  static final h2 = [
    _h2.copyWith(
      color: AppColors.black,
    ),
    _h2.copyWith(
      color: AppColors.white,
    )
  ];
  static final h3 = [
    _h3.copyWith(
      color: AppColors.black,
    ),
    _h3.copyWith(
      color: AppColors.white,
    )
  ];
  static final h4 = [
    _h4.copyWith(
      color: AppColors.black,
    ),
    _h4.copyWith(
      color: AppColors.white,
    )
  ];
  static final h5 = [
    _h5.copyWith(
      color: AppColors.black,
    ),
    _h5.copyWith(
      color: AppColors.white,
    )
  ];
  static final body = [
    _body.copyWith(
      color: AppColors.black,
    ),
    _body.copyWith(
      color: AppColors.white,
    )
  ];
  static final caption = [
    _caption.copyWith(
      color: AppColors.black,
    ),
    _caption.copyWith(
      color: AppColors.white,
    )
  ];
}
