import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextThemeExt on BuildContext {
  AppTextStyle get textStyle => AppTextStyle(); // context.textStyle
}

extension TextStyleExt on TextStyle {
  /// fontWeight: normal
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);

  /// fontWeight: bold
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  /// color: white
  TextStyle get white => copyWith(color: Colors.white);

  /// color: black
  TextStyle get black => copyWith(color: Colors.black);

  /// color: primary
  TextStyle get primary => copyWith(color: Colors.green);

  /// color: `grey`
  TextStyle get grey => copyWith(color: Colors.grey);

  /// color: `grey600`
  TextStyle get grey600 => copyWith(color: Colors.grey.shade600);

  /// fontSize: `size`
  TextStyle size(double fontSize) => copyWith(fontSize: fontSize.sp);
}

class AppTextStyle {
  AppTextStyle._init();
  static final AppTextStyle _instance = AppTextStyle._init();
  factory AppTextStyle() => _instance;

  //! Header
  /// fontSize: 36 [bold]
  final TextStyle headingXL = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  /// fontSize: 34 [bold]
  final TextStyle headingL = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  /// fontSize: 32 [w500]
  final TextStyle headingM = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 30 [normal]
  final TextStyle headingS = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );

  //! Title
  /// fontSize: 28 [bold]
  final TextStyle titleL = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  /// fontSize: 24 [w500]
  final TextStyle titleM = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 20 [normal]
  final TextStyle titleS = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  //! Body
  /// fontSize: 18 [normal]
  final TextStyle bodyL = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  /// fontSize: 16 [normal]
  final TextStyle bodyM = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  /// fontSize: 14 [normal]
  final TextStyle bodyS = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  //! Caption
  /// fontSize: 13 [w300]
  final TextStyle caption = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
  );

  //! Label
  /// fontSize: 12 [bold]
  final TextStyle labelL = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  /// fontSize: 11 [w500]
  final TextStyle labelM = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );

  /// fontSize: 10 [normal]
  final TextStyle labelS = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
}
