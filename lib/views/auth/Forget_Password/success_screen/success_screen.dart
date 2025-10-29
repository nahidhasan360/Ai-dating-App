import 'package:dating_apps/global_widgets/custom_appbar.dart';
import 'package:dating_apps/global_widgets/custom_button.dart';
import 'package:dating_apps/global_widgets/custom_text.dart';
import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      extendBodyBehindAppBar: true,

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              SvgManager.success,
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            ),

            SizedBox(height: 47),

            Center(
              child: Column(
                children: [
                  CustomText(
                    text: 'Successful',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 19),
                  CustomText(
                    text:
                        'Congratulations! Your password has\nbeen changed. Click continue to login',
                    color: AppColors.subtitleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  SizedBox(height: 30),

                  CustomButton(
                    onTap: () {},
                    marginHorizontal: 78,
                    title: 'Password Updated',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    borderRadius: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
