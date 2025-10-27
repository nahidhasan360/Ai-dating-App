import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final Color? color;
  final Color? color1;

  const PageIndicator({super.key, this.color, this.color1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 18,
          width: 6,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            gradient: AppColors.btnColor,
            borderRadius: BorderRadius.circular(10),
            // color: color ?? Colors.white24,
            shape: BoxShape.rectangle,
          ),
        ),
        SizedBox(height: 0),
        Container(
          height: 8,
          width: 7,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            gradient: AppColors.btnColor,
            borderRadius: BorderRadius.circular(50),

            // color: color ?? Colors.white24,
          ),
        ),
      ],
    );
  }
}
