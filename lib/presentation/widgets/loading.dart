import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    this.size = 30,
    this.width = 3,
    this.color = Colors.grey,
  });

  final double size;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.r,
      width: size.r,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: width,
      ),
    );
  }
}
