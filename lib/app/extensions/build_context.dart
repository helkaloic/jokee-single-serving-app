import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  /// Get screen size of current context
  Size get screenSize => MediaQuery.of(this).size;

  /// Get screen width of current context
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Get screen height of current context
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Get gap size according to orientation `screenHeight > screenWidth`
  double orientation(double size1, double size2) =>
      screenHeight > screenWidth ? size1 : size2;
}
