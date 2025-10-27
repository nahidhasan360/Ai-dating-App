import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/routes/all_routes.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  void initState() {
    super.initState();
    print("InitState called");
    Future.delayed(const Duration(seconds: 5), () {
      print("Navigating to onboarding2");
      Get.offNamed(
        AppRoutes.onboarding2,
      );


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),
        child: SafeArea(
          child: Column(
            children: [
              // Status bar spacing
              SizedBox(height: 20),
              // Main content centered
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ==================  Heart logo ================//
                      SvgPicture.asset(SvgManager.logo, width: 70.w),

                      // ================== Heart talk Text ================//
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: SvgPicture.asset(
                          SvgManager.hearTalk,
                          width: 150.w,
                        ),
                      ),
                    ],
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
