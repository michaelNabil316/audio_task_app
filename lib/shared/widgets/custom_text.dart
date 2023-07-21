import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final bool isBold;
  final bool? softWrap;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 16,
    this.textAlign = TextAlign.center,
    this.isBold = false,
    this.fontFamily, this.softWrap, this.maxLines, this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      style: TextStyle(
        fontWeight: isBold ? FontWeight.bold : null,
        color: color,
        fontSize: size.sp,
      ),
    );
  }
}
