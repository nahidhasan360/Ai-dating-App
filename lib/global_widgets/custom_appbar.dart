import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String iconPath;
  final VoidCallback? onBackPressed;
  final EdgeInsetsGeometry padding;
  final Gradient? backgroundGradient;

  const CustomAppBar({
    Key? key,
    this.height = 200,
    this.iconPath = 'assets/icons/back.svg',
    this.onBackPressed,
    this.padding = const EdgeInsets.only(left: 15, bottom: 70),
    this.backgroundGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        gradient: backgroundGradient ?? LinearGradient(
          colors: [Colors.transparent, Colors.transparent],
        ),
      ),
      child: IconButton(
        onPressed: onBackPressed ?? () => Get.back(),
        icon: SvgPicture.asset(
          iconPath,
          height: 50,
          width: 50,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
