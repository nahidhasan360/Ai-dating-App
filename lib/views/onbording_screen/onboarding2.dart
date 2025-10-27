import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/routes/all_routes.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration( seconds: 4), () {
      print(' 3 number screen');
      Get.offAllNamed(AppRoutes.welcomeScreen);
    },);
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
                      SvgPicture.asset(SvgManager.logo1, width: 70.w),

                      // ================== Heart talk Text ================//
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: SvgPicture.asset(
                          SvgManager.hearTalk2,
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
