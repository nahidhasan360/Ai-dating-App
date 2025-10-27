import 'package:dating_apps/core/routes/all_routes.dart';
import 'package:dating_apps/global_widgets/custom_text.dart';
import 'package:dating_apps/utils/app_strings.dart';
import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../global_widgets/custom_button.dart';
import '../../global_widgets/indicator2.dart';

class WelcomeScreen2 extends StatefulWidget {
  const WelcomeScreen2({super.key});

  @override
  State<WelcomeScreen2> createState() => _WelcomeScreen2State();
}

class _WelcomeScreen2State extends State<WelcomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: AppColors.backgroundImage),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Expanded(
                flex: 4,
                child: Center(
                  child: Image.asset(
                    ImageManager.couplePic,
                    fit: BoxFit.cover,
                    height: 500.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(
                    bottom: 30,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    width: double.infinity.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      color: AppColors.boxColor,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        CustomText(
                          text: AppStrings.welcomeSecond1,
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          textAlign: TextAlign.center,
                          top: 30,
                        ),

                        SizedBox(height: 8.h),
                        CustomText(
                          text: AppStrings.welcomeSecond2,
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 13.h),
                        PageIndicator2(),
                        SizedBox(height: 13.h),
                        CustomButton(
                          onTap: () {
                            print('hey');
                            Get.toNamed(AppRoutes.welcome);

                          },
                          gradient: AppColors.btnColor,
                          borderRadius: 30,
                          width: 220,
                          title: 'Next',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
