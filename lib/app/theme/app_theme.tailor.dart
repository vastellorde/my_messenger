// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTheme extends ThemeExtension<AppTheme> with DiagnosticableTreeMixin {
  const AppTheme({
    required this.background,
    required this.black,
    required this.body,
    required this.caption,
    required this.gray,
    required this.graySecondary,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.primary,
    required this.secondary,
    required this.white,
  });

  final Color background;
  final Color black;
  final TextStyle body;
  final TextStyle caption;
  final Color gray;
  final Color graySecondary;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final Color primary;
  final Color secondary;
  final Color white;

  static AppTheme get light => kDebugMode ? _lightGetter : _lightFinal;

  static AppTheme get dark => kDebugMode ? _darkGetter : _darkFinal;

  static AppTheme get _lightGetter => AppTheme(
        background: $_AppTheme.background[0],
        black: $_AppTheme.black[0],
        body: $_AppTheme.body[0],
        caption: $_AppTheme.caption[0],
        gray: $_AppTheme.gray[0],
        graySecondary: $_AppTheme.graySecondary[0],
        h1: $_AppTheme.h1[0],
        h2: $_AppTheme.h2[0],
        h3: $_AppTheme.h3[0],
        h4: $_AppTheme.h4[0],
        h5: $_AppTheme.h5[0],
        primary: $_AppTheme.primary[0],
        secondary: $_AppTheme.secondary[0],
        white: $_AppTheme.white[0],
      );

  static final AppTheme _lightFinal = AppTheme(
    background: $_AppTheme.background[0],
    black: $_AppTheme.black[0],
    body: $_AppTheme.body[0],
    caption: $_AppTheme.caption[0],
    gray: $_AppTheme.gray[0],
    graySecondary: $_AppTheme.graySecondary[0],
    h1: $_AppTheme.h1[0],
    h2: $_AppTheme.h2[0],
    h3: $_AppTheme.h3[0],
    h4: $_AppTheme.h4[0],
    h5: $_AppTheme.h5[0],
    primary: $_AppTheme.primary[0],
    secondary: $_AppTheme.secondary[0],
    white: $_AppTheme.white[0],
  );

  static AppTheme get _darkGetter => AppTheme(
        background: $_AppTheme.background[1],
        black: $_AppTheme.black[1],
        body: $_AppTheme.body[1],
        caption: $_AppTheme.caption[1],
        gray: $_AppTheme.gray[1],
        graySecondary: $_AppTheme.graySecondary[1],
        h1: $_AppTheme.h1[1],
        h2: $_AppTheme.h2[1],
        h3: $_AppTheme.h3[1],
        h4: $_AppTheme.h4[1],
        h5: $_AppTheme.h5[1],
        primary: $_AppTheme.primary[1],
        secondary: $_AppTheme.secondary[1],
        white: $_AppTheme.white[1],
      );

  static final AppTheme _darkFinal = AppTheme(
    background: $_AppTheme.background[1],
    black: $_AppTheme.black[1],
    body: $_AppTheme.body[1],
    caption: $_AppTheme.caption[1],
    gray: $_AppTheme.gray[1],
    graySecondary: $_AppTheme.graySecondary[1],
    h1: $_AppTheme.h1[1],
    h2: $_AppTheme.h2[1],
    h3: $_AppTheme.h3[1],
    h4: $_AppTheme.h4[1],
    h5: $_AppTheme.h5[1],
    primary: $_AppTheme.primary[1],
    secondary: $_AppTheme.secondary[1],
    white: $_AppTheme.white[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTheme copyWith({
    Color? background,
    Color? black,
    TextStyle? body,
    TextStyle? caption,
    Color? gray,
    Color? graySecondary,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    Color? primary,
    Color? secondary,
    Color? white,
  }) {
    return AppTheme(
      background: background ?? this.background,
      black: black ?? this.black,
      body: body ?? this.body,
      caption: caption ?? this.caption,
      gray: gray ?? this.gray,
      graySecondary: graySecondary ?? this.graySecondary,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      white: white ?? this.white,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      background: Color.lerp(background, other.background, t)!,
      black: Color.lerp(black, other.black, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      graySecondary: Color.lerp(graySecondary, other.graySecondary, t)!,
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      h5: TextStyle.lerp(h5, other.h5, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppTheme'))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('black', black))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('caption', caption))
      ..add(DiagnosticsProperty('gray', gray))
      ..add(DiagnosticsProperty('graySecondary', graySecondary))
      ..add(DiagnosticsProperty('h1', h1))
      ..add(DiagnosticsProperty('h2', h2))
      ..add(DiagnosticsProperty('h3', h3))
      ..add(DiagnosticsProperty('h4', h4))
      ..add(DiagnosticsProperty('h5', h5))
      ..add(DiagnosticsProperty('primary', primary))
      ..add(DiagnosticsProperty('secondary', secondary))
      ..add(DiagnosticsProperty('white', white));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality().equals(caption, other.caption) &&
            const DeepCollectionEquality().equals(gray, other.gray) &&
            const DeepCollectionEquality()
                .equals(graySecondary, other.graySecondary) &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2) &&
            const DeepCollectionEquality().equals(h3, other.h3) &&
            const DeepCollectionEquality().equals(h4, other.h4) &&
            const DeepCollectionEquality().equals(h5, other.h5) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(caption),
      const DeepCollectionEquality().hash(gray),
      const DeepCollectionEquality().hash(graySecondary),
      const DeepCollectionEquality().hash(h1),
      const DeepCollectionEquality().hash(h2),
      const DeepCollectionEquality().hash(h3),
      const DeepCollectionEquality().hash(h4),
      const DeepCollectionEquality().hash(h5),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(white),
    );
  }
}

extension AppThemeBuildContext on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
}
