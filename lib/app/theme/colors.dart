import 'package:flutter/material.dart';

extension AppColorExt on BuildContext {
  AppColor get colors => AppColor(); // context.colors
}

class AppColor {
  AppColor._init();
  static final AppColor _instance = AppColor._init();
  factory AppColor() => _instance;

  final Color green = const Color(0xFF29b363);
  final Color blue = const Color(0xFF2c7edb);
  final Color divider = const Color(0xFFf3f3f3);
}
