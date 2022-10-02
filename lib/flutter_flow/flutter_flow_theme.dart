// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color white;
  late Color lineColor;
  late Color darkBG;
  late Color primaryBlack;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFFFFFFF);
  late Color secondaryColor = const Color(0xFF000000);
  late Color tertiaryColor = const Color(0xFF3737E6);
  late Color alternate = const Color(0xFFF5F2F0);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFF5F2F0);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color white = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFDBE2E7);
  late Color darkBG = Color(0xFF1A1F24);
  late Color primaryBlack = Color(0xFF131619);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Apotek';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Apotek',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 60,
      );
  String get title2Family => 'Apotek';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Apotek',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 30,
      );
  String get title3Family => 'Minion Pro Font';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Minion Pro Font',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20,
        fontStyle: FontStyle.normal,
      );
  String get subtitle1Family => 'Minion Pro Font';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Minion Pro Font',
        color: theme.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 18,
        fontStyle: FontStyle.normal,
      );
  String get subtitle2Family => 'Minion Pro Font';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Minion Pro Font',
        color: theme.darkBG,
        fontWeight: FontWeight.normal,
        fontSize: 18,
        fontStyle: FontStyle.italic,
      );
  String get bodyText1Family => 'Minion Pro Font';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Minion Pro Font',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'Minion Pro Font';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Minion Pro Font',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12,
        fontStyle: FontStyle.italic,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
