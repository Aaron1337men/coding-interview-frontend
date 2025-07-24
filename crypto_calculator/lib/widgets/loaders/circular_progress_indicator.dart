import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final Color color;
  final double stroke;
  final Color? backgroundColor;
  const CustomCircularProgressIndicator({
    Key? key,
    this.size,
    this.color = AppColors.blue,
    this.stroke = 1,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: stroke,
          color: color,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
