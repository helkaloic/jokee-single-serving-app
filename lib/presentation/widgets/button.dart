import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jokee_single_serving/app/theme/colors.dart';
import 'package:jokee_single_serving/app/theme/text_style.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
  });

  final void Function() onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 20.w,
        ),
        decoration: BoxDecoration(
          color: color ?? context.colors.blue,
        ),
        child: Text(
          text,
          style: context.textStyle.bodyS.white,
        ),
      ),
    );
  }
}
